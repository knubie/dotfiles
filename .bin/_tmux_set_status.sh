#!/bin/sh

FILENAME=$1
FILEPATH=$2
CMD=$3

if [[ $FILENAME == "" ]]; then
  #CURRENT_DIR=`pwd|sed "s=$HOME=~="`
  #CURRENT_DIR=${PWD##*/}
	st=$(/usr/local/bin/git status 2>/dev/null | tail -n 1)
	SUB_DIR=""
  if [[ $st == "" ]]; then
		CURRENT_DIR=${PWD##*/}
	else
		CURRENT_DIR=`basename $(git rev-parse --show-toplevel)`
		SUB_DIR=`pwd | sed "s=$(git rev-parse --show-toplevel)=="`
	fi
else
  CURRENT_DIR=${PWD##*/}
fi

# Get filename if inside vim
file() {
  if [[ $FILENAME == "" ]]; then
    echo ""
  else
    if [[ $FILEPATH == "." ]]; then # In filebrowser
      echo "/#[default]#[fg=black,bold]$FILENAME"
    else
      echo "/$FILEPATH/#[default]#[fg=black,bold]$FILENAME"
    fi
  fi
}

# Get the current git repo branch
branch() {
	gtbranch=$(/usr/local/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
	if [[ $gtbranch == "" ]]; then
		tag=$(/usr/local/bin/git describe --exact-match 2>/dev/null)
		if [[ $tag == "" ]]; then
			echo $(/usr/local/bin/git rev-parse --short HEAD 2>/dev/null)
		else
			echo $tag
		fi
	else
		echo $(/usr/local/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
	fi
}

# Get whether branch needs to be synced.
sync () {
  unpushed=$(/usr/local/bin/git cherry -v @{upstream} 2>/dev/null)
  if [[ $unpushed == "" ]]; then
    echo ""
  else
    echo "⟳#[default]"
  fi
}

# Display git information
git() {
  st=$(/usr/local/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]; then
    echo ""
  else
    if [[ $st == "nothing to commit, working directory clean" ]]; then
      echo " #[fg=cyan]on #[fg=white,bold]$(branch)$(sync)"
    else
      echo " #[fg=cyan]on #[fg=black,bold]$(branch)$(sync)"
    fi
  fi
}

# Set tmux statusbar
# if the CWD begins with '/'
if [ "$TERM" = "screen-256color-italic" ] && [ -n "$TMUX" ]; then
	if [[ `echo $FILEPATH | cut -c1` == '/' ]]; then
		tmux setenv TMUX_STATUS_$(tmux display -p "#S")_$(tmux display -p "#I") " #[fg=black,bold]$(file)#[default]"
		tmux set -q status-left " #[fg=black,bold]$(file)#[default]"
	else
		if [[ $FILENAME == "" ]]; then
			tmux setenv TMUX_STATUS_$(tmux display -p "#S")_$(tmux display -p "#I") " #[fg=black]$CURRENT_DIR#[default]$SUB_DIR$(file)#[default]$(git)"
			tmux set -q status-left " #[fg=black]$CURRENT_DIR#[default]$SUB_DIR$(file)#[default]$(git)"
		else
			tmux setenv TMUX_STATUS_$(tmux display -p "#S")_$(tmux display -p "#I") " #[fg=black]$CURRENT_DIR$(file)#[default]$(git)"
			tmux set -q status-left " #[fg=black]$CURRENT_DIR$(file)#[default]$(git)"
		fi
	fi
fi
