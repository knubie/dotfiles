#!/bin/sh

FILEPATH=$1
FILENAME=$2
CURRENT_DIR=${PWD##*/}
#RELATIVE_PATH=FILEPAth-${PWD}

# FILEPATH=.git
# FILENAME=COMMIT_EDITMSG

file() {
  if [[ $FILEPATH == "." ]]; then # In filebrowser
    echo "/#[default]#[fg=black,bold]."
  else
    RELATIVE_PATH=${FILEPATH/#$PWD/}
    #RELATIVE_PATH=${$FILEPATH/$PWD/''}
    echo "/#[default]$RELATIVE_PATH/#[fg=black,bold]$FILENAME"
  fi
}

# Set tmux statusbar
if [ "$TERM" = "screen-256color-italic" ] && [ -n "$TMUX" ]; then
  tmux setenv TMUX_STATUS_$(tmux display -p "#S")_$(tmux display -p "#I") " #[fg=black]$CURRENT_DIR#[fg=black,bold]$(file)#[default]"
  tmux set -q status-left " #[fg=black]$CURRENT_DIR$(file)#[default]"
fi
