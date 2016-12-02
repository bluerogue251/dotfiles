export PATH="$HOME/.bin:$PATH"
export PROMPT="%n:%1/%% "
export EDITOR="vim"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

# For rbenv ruby version manager
eval "$(rbenv init - --no-rehash zsh)"

# For docker-machine
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/teddy/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
# Or, run this command to configure your shell for docker-machine:
# eval $(docker-machine env default)

alias ll="ls -lhAG"