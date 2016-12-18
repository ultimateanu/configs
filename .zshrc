#
# ultimateanu .zshrc
#

### History ###
HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY

### Other ###
setopt null_glob                                            # Silent error if no glob matches
autoload -U compinit && compinit                            # Menu completion based on the command
autoload -U colors && colors                                # Allow terminal colors
zstyle ':completion:*' menu select                          # Menu selection if there are multiple matches
disable -r time                                             # Make time command work
bindkey -v                                                  # Vim like bindings
bindkey '^r' history-incremental-pattern-search-backward    # Ctrl-r history search
TERM=xterm                                                  # Fixes issue with urxvt

# Add bin in home dir to path
if [ -d "$HOME/bin" ]; then
  export PATH="$PATH:$HOME/bin"
fi
if [ -d "$HOME/code/bin" ]; then
  export PATH="$PATH:$HOME/code/bin"
fi

# Include local configs if they exist
for local_config in $HOME/.zshrc_*; do
  . $local_config
done
