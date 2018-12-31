#################### Base 16 Version#######################

#set -gx PATH /usr/bin /bin /usr/sbin /sbin /Library/TeX/texbin
# /usr/local/Cellar/node/8.1.3/bin 
set -gx PATH /Library/TeX/Root/bin/x86_64-darwin $HOME/.bin /usr/local/bin $HOME/.rbenv/bin /usr/local/opt/fzf/bin $PATH
#set -U fish_user_paths /Library/TeX/Root/bin/x86_64-darwin $HOME/.bin /usr/local/bin $HOME/.rbenv/bin $HOME/.rbenv/shims /usr/local/opt/fzf/bin $fish_user_paths

status --is-interactive; and . (rbenv init -|psub)

set -gx PATH /Applications/Postgres.app/Contents/Versions/9.6/bin $PATH
set -gx PATH $HOME/Code/cmn-admin/bin $PATH
#set -U fish_user_paths $HOME/Code/cmn-api/bin $fish_user_paths

#set -gx EDITOR mvim -v
set -gx EDITOR vim
#set -gx DOCKER_TLS_VERIFY 1
#set -gx DOCKER_HOST tcp://192.168.59.103:2376
#set -gx DOCKER_CERT_PATH /Users/matthewsteedman/.boot2docker/certs/boot2docker-vm
set -gx HEROKU_ORGANIZATION common
#set -gx FZF_DEFAULT_OPTS '--color 16,fg:-1,bg:-1,hl:8,fg+:-1,bg+:5,hl+:8,info:7,prompt:-1,pointer:7,marker:7,spinner:7'
set -gx FZF_DEFAULT_OPTS "--color 16,bg+:10,bg:0,spinner:6,hl:4,fg:12,header:4,info:3,pointer:6,marker:6,fg+:12,prompt:3,hl+:4"

# Pretty ls colors
#set -x LSCOLORS Axhxaxaxaxaxaxaxaxaxax
set -x LSCOLORS ExGxBxDxCxEgEdxbxgxcxd

# Variables used in the prompt
set -g git_status ''
set -g git_status_last ''
set -g git_branch ''
set -g git_dirty ''

# More pretty colors
set fish_color_normal normal
set fish_color_valid_path --underline
set fish_color_command -o white
set fish_color_param white
set fish_color_quote -o white
set fish_pager_color_prefix brblack
set fish_pager_color_completion brblack
set fish_color_autosuggestion brblack

# Set up docker machine
#if test (docker-machine ls | grep Running)
#  eval (docker-machine env default)
#end

function difff
  diff -u $argv[1] $argv[2] | sed 1,2d | sed 's/^./& /' | grcat conf.diff
end

function git
  if test $argv[1] = "status"
    command git $argv | grcat conf.git
  #else if test $argv[1] = "push"
    #_set_git_status
    #command git $argv --progress 2>&1 | grcat conf.gitpush
  else
    command git $argv
    #_set_git_status
  end
end

# TODO: have tmux status be two variables - general shell & vim

alias ag "command ag --color-line-number '1;32' --color-match '2;34'"

function ssh
  __fish_cursor_xterm block
  set -lx TERM xterm
  command ssh $argv
end

function pw
  command security find-generic-password -gs $argv -w | tr -d '\n' | pbcopy
end

# -F show special character like '/' and '@'
# -G use colors
# 1 show one column
# a show invisibles
alias ls 'ls -FG1a'

#function cat
  #command cat $argv | vimcat
#end

complete -c git -a 'graph' -d 'Show commit history'
complete -c git -a 'amend' -d 'Amend previous commit'
complete -c git -a 'count' -d 'Show commit count by user'

alias attach 'tmux attach -t'
complete -c attach -x -a '(tmux list-sessions -F "#S")' -d 'Session'

alias ... 'cd ../..'

set fish_cursor_default block
set fish_cursor_normal block
set fish_cursor_insert line
set fish_cursor_visual block

#fish_default_key_bindings

#fish_vi_cursor

set fish_key_bindings fish_user_key_bindings
#set -e fish_key_bindings


# re-implementation of fish_vi_cursor
#function fish_vi_cursor_handle --on-variable fish_bind_mode
#  set -l varname fish_cursor_$fish_bind_mode
#  if not set -q $varname
#    set varname fish_cursor_unknown
#  end
#  __fish_cursor_xterm $$varname
#  #$fcn \$\$varname
#  #$tmux_postfix
#end

function fish_vi_cursor --on-variable fish_bind_mode
  if set -q __last_fish_bind_mode
    and test $__last_fish_bind_mode = $fish_bind_mode
    return
  end
  set -g __last_fish_bind_mode $fish_bind_mode
  switch $fish_bind_mode
    case insert
      __fish_cursor_xterm line
      #printf '\e]50;CursorShape=1\x7'
    case default
      __fish_cursor_xterm block
      #printf '\e]50;CursorShape=0\x7'
    case "*"
      __fish_cursor_xterm block
      #printf '\e]50;CursorShape=0\x7'
  end
end

## Change cursor to block before executing
#function set_mode_pre_execution --on-event fish_preexec
    #set command (expr $argv : '\([^ ]*\).*')
    #set -g __last_fish_bind_mode $fish_bind_mode
    #if test $command = 'node'
        #or echo $command | grep 'python' >/dev/null ^/dev/null
    #else
        #printf '\e]50;CursorShape=0\x7'
    #end
#end

## Change cursor to back to line after execution
#function set_mode_post_execution --on-event fish_postexec
  #set -l varname fish_cursor_$fish_bind_mode
  #if not set -q $varname
    #set varname fish_cursor_unknown
  #end
  #__fish_cursor_xterm $$varname
  ##$fcn \$\$varname
  ##$tmux_postfix
#end

# The fish_mode_prompt function is prepended to the prompt
#function fish_mode_prompt --description "Displays the current mode"
#  # Do nothing if not in vi mode
#  if set -q __fish_vi_mode
#    switch $fish_bind_mode
#      case default
#        set_color --bold black
#        echo '[N]'
#      case insert
#        set_color --bold white
#        echo '[I]'
#      case replace-one
#        set_color --bold white
#        echo '[R]'
#      case visual
#        set_color --bold white
#        echo '[V]'
#    end
#    set_color normal
#    echo -n ' '
#  end
#end
function fish_mode_prompt
  # NOOP - Disable vim mode indicator
end

# Amazing prompt
function fish_prompt
  # Separator
  set_color --bold bryellow
  for i in (seq $COLUMNS)[2..-1]
    echo -n '─'
  end
  printf "\n"

  # Git Branch
  set git_status (command git status 2>/dev/null | tail -n 2)
  set git_branch ''

  if test -n "$git_status"
    set git_branch (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    set git_status_last (command git status 2>/dev/null | tail -n 1)
    set git_files_changed (command git diff --numstat | wc -l | tr -d '[:space:]')

    if test "$git_status_last" = "nothing to commit, working directory clean"
      # Clean
      set_color --background brgreen
      set_color brblack
      echo -n "  "
      echo -n $git_branch
    else
      # Dirty
      set_color --background brgreen
      set_color brblue
      echo -n "  "
      echo -n $git_branch
    end
    if test "$git_files_changed" = "0"
      echo -n " "
    else
      set_color --bold black
      echo -n " ┃ "
      set_color brblue
      echo -n " "
      echo -n $git_files_changed
      echo -n ' '
    end

    set_color --background normal
    set_color normal
    echo -n ' '
  end

  # Directory
  set_color --background normal
  #set_color white
  #echo -n " "
  set_color --normal white
  echo -n (pwd|sed "s=$HOME=~=")
  set_color -o bryellow
  echo -n " ∴ "
end

function __fish_prompt
  set_color magenta
  for i in (seq $COLUMNS)[2..-1]
    echo -n '─'
  end
  printf "\n"
  set_color -o cyan
  echo -n (pwd|sed "s=$HOME=~=")

  set git_status (command git status 2>/dev/null | tail -n 2)
  set git_branch ''

  if test -n "$git_status"
    set git_branch (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    set git_status_last (command git status 2>/dev/null | tail -n 1)

    set_color normal
    echo -n " on "
    if test "$git_status_last" = "nothing to commit, working directory clean"
      # Clean
      set git_dirty 'false'
      set_color -o white
      echo -n $git_branch
    else
      # Dirty
      set git_dirty 'true'
      set_color -o black
      echo -n $git_branch
    end
  end

  set_color -o black
  echo -n " ∴ "

  #if test -n "$TMUX"
    #bash tmux_set_status_fish.sh (pwd|sed "s=$HOME=~=")
  #end

end

set fish_greeting ""

#function tmux_pwd --on-event fish_prompt
  #if test -n "$TMUX"
    #tmux setenv TMUXPWD_(command tmux display -p "#I") "$PWD"
    #bash tmux_set_status.sh
  #end
#end

#function _after_vim --on-event fish_postexec
  #if test (echo $argv | awk '{ print $1 }') = "vim"
    #or test (echo $argv | awk '{ print $1 }') = "tig"
    #_set_git_status
  #end
#end

function _set_git_status
  #set git_status (command git status 2>/dev/null | tail -n 2)

  #if test -n "$git_status"
    #set git_branch (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    #set git_status_last (command git status 2>/dev/null | tail -n 1)
    #if test "$git_status_last" = "nothing to commit, working directory clean"
      #set git_dirty 'false'
    #else
      #set git_dirty 'true'
    #end
    #if test -n "$git_branch"
    #else
      #set -l tag (command git describe --exact-match ^/dev/null)
      #if test -n "$tag"
        #set git_branch "$tag"
      #else
        #set git_branch (command git rev-parse --short HEAD ^/dev/null)
      #end
    #end
  #else
    #set git_branch ''
  #end

  #if test -n "$TMUX"
    ##tmux setenv TMUXPWD_(command tmux display -p "#I") "$PWD"
    ##bash tmux_set_status_fish.sh (pwd|sed "s=$HOME=~=") $git_branch $git_dirty
    #bash tmux_set_status_fish.sh (pwd|sed "s=$HOME=~=")
  #end

end

#function cd
  #builtin cd $argv
  #_set_git_status
#end

#function rm
  #command rm $argv
  #_set_git_status
#end

#function set_npm_bin_path --on-event fish_prompt
  #if test -d (npm bin)
    #set PATH (npm bin) $PATH
  #end
#end
