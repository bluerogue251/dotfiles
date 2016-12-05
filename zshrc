export PATH="$HOME/.bin:$PATH"
export PROMPT="%n:%1/%% "
export EDITOR="vim"

# For cntl-r reverse command searching
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
bindkey -v
bindkey "^R" history-incremental-pattern-search-backward
setopt inc_append_history
setopt share_history

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

# For rbenv ruby version manager
eval "$(rbenv init - --no-rehash zsh)"

# For docker-machine -- get this using: `eval $(docker-machine env default)`
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/teddy/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

# Aliases
alias ll="ls -lhAG"