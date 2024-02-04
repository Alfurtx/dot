#!/usr/bin/zsh

# shell configuration

export HISTSIZE=10000
export SAVEHIST=10000
export HISTDUP=erase

fpath=($ZDOTDIR/functions $fpath)

autoload -U compinit; compinit
autoload -Uz vcs_info
autoload -Uz fda
autoload -Uz fe
autoload -Uz fkill

precmd_functions+=( vcs_info )

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%s:%b) '

setopt appendhistory
setopt prompt_subst
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt nobeep
setopt auto_cd

## aliases
alias l="ls -ABGhv --group-directories-first --color=auto"
alias vi="nvim"
alias cls="clear"
alias magit='emacsclient -t -c --eval "(magit-status)"; clear'


## prompt
PROMPT='%B%~%b ${vcs_info_msg_0_}:: '

## gpg
# export GPG_TTY=$(tty)
# gpgconf --launch gpg-agent

## Tmux
# if [ -z "$TMUX" ]; then
# 	tmux new-session -A -s $USERNAME
#       tmux attach || tmux
# fi
