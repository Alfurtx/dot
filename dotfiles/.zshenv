#!/usr/bin/zsh

export LESSHISTFILE=-
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export EMACSDIR=$XDG_CONFIG_HOME/emacs
export CARGO_HOME=$XDG_CONFIG_HOME/cargo
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE=$XDG_CONFIG_HOME/zsh/histfile
export GPG_TTY=$(tty)
# export XAUTHORITY=/xorg/.Xauthority
export XINITRC=$XDG_CONFIG_HOME/xorg/.xinitrc
# export GNUPGHOME=$XDG_DATA_HOME/gnupg
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc 

# SSH
## Needed for the ssh-agent.service unit file
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# SYNCTHING
## Custom variable to store SYNCTHING folder location, so that other scripts and apps can use it easily and not break everything if i change it in the future
export SYNCTHING_FOLDER_FONSI=$HOME/Notas
## for Syncthing Hooks (to  automatically update whenever i edita pdf with the samsung notes app and it makes me create a copy of said pdf)
export ST_HOOK_ROOT=$XDG_CONFIG_HOME/syncthing-hooks

# WAYLAND
export QT_QPA_PLATFORM=wayland
export MOZ_ENABLE_WAYLAND=1
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=2

# FD ('find' replacement)
export FD_OPTIONS="-H"

# FZF
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --inline-info --border --margin=1 --padding=1"
export FZF_DEFAULT_COMMAND="fd --type f --type l $FD_OPTIONS"
