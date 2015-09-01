export PATH="/Users/teddy/.rbenv/shims:/usr/local/opt/nvm/v0.10.35/bin:/usr/local/bin:/Users/teddy/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules"

alias c='clear'

alias vi=vim

alias git_delete_merged='git fetch origin -p && git checkout master && git pull && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

alias be='bundle exec'
alias b='bundle'

alias gpg=gpg2
