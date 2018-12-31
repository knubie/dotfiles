#!/bin/sh

FILEPATH=$1
BRANCH=$2
DIRTY=$3
#RELATIVE_PATH=FILEPAth-${PWD}

# FILEPATH=.git
# FILENAME=COMMIT_EDITMSG

# Display git information
git() {
  if [[ -z "$BRANCH"  ]]; then
    echo ""
  else
    if [[ $DIRTY == "true" ]]; then
      echo " #[fg=cyan]on #[fg=black,bold]$BRANCH"
    else
      echo " #[fg=cyan]on #[fg=white,bold]$BRANCH"
    fi
  fi
}

# Set tmux statusbar
if [ "$TERM" = "screen-256color-italic" ] && [ -n "$TMUX" ]; then
  tmux setenv TMUX_STATUS_$(tmux display -p "#S")_$(tmux display -p "#I") " #[fg=black,bold]$FILEPATH#[default]$(git)#[default]"
  tmux set -q status-left " #[fg=black,bold]$FILEPATH#[default]$(git)#[default]"
fi
