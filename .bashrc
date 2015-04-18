export PATH="$HOME/.rbenv/bin:$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
eval "$(rbenv init -)"

alias be="bundle exec"
alias rspec="be rspec"
alias rake="be rake"
alias cucumber="be cucumber"
alias rails="be rails"
alias cap="be cap"
alias script="be script"

alias gprom="git pull --rebase origin master"

source ~/.bash_private
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH=$HOME/go

ulimit -n 4096
