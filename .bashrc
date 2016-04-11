export GOPATH=$HOME/work/go
export PATH="$HOME/.rbenv/bin:$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias be="bundle exec"
alias rspec="be rspec"
alias rake="be rake"
alias cucumber="be cucumber"
alias rails="be rails"
alias cap="be cap"
alias script="be script"
alias getdocker='eval "$(docker-machine env default)"'

alias gprom="git pull --rebase origin master"

if [ -e "~/.bash_private" ]; then source ~/.bash_private; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

eval "$(docker-machine env default)"
