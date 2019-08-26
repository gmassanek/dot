source ~/dev/ops/shell/aliases.sh

export GOPATH=$HOME/dev/go
export PATH="$HOME/.rbenv/bin:$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
export PATH="/usr/local/opt/llvm/bin":$PATH
export PATH="/usr/local/opt/node@10/bin":$PATH
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

SPARK_HOME="/usr/local/Cellar/apache-spark/1.5.2"
PATH=$PATH:$SCALA_HOME/bin
export CDPATH=.:~:$GOPATH/src/github.com/reverbdotcom:~/dev

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

ssh-add ~/.ssh/staging.pem
ssh-add ~/.ssh/production.pem

alias be="bundle exec"
alias rspec="be rspec"
alias rake="be rake"
alias cucumber="be cucumber"
alias rails="be rails"
alias cap="be cap"
alias script="be script"
alias zr='zeus rspec'
alias zs='zeus start'
alias fs='foreman start'

source ~/.bash_private

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="node_modules/.bin:$PATH"

# Git Aliases
alias gs='git status'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias grv='git remote -v'
alias gd='git diff'
alias gprom="git pull --rebase origin master"
alias grmm='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'

alias convoxp='convox login internal-convox-production-i-373700845.us-east-1.elb.amazonaws.com'
alias convoxs='convox login internal-reverb-staging-i-1652947956.us-east-1.elb.amazonaws.com'
alias l='docker-compose -f $HOME/dev/local/docker-compose.yml'

alias vim="nvim"

ulimit -S -n 8192
