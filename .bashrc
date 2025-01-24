eval "$(/opt/homebrew/bin/brew shellenv)"

# MacOS tries to get me to switch to zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

#source ~/dev/ops/shell/aliases.sh
source ~/.git-prompt.sh

export GOPATH=$HOME/dev/go
export PATH="$HOME/.rbenv/bin:$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
export PATH="/usr/local/opt/llvm/bin:$PATH"
#export PATH="/usr/local/opt/node@10/bin":$PATH
#export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/Users/geoff/.yarn/bin:$PATH"
export PATH="/Users/geoff/.nodenv/versions/18.0.0/bin:$PATH"
export PATH="/Users/geoff/.docker/cli-plugins:$PATH"
#export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"
#export PATH="/usr/local/opt/openssl@3/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init - bash)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

SPARK_HOME="/usr/local/Cellar/apache-spark/1.5.2"
PATH=$PATH:$SCALA_HOME/bin
export CDPATH=.:~:$GOPATH/src/github.com/reverbdotcom:~/dev:~/dev/stellar

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#ssh-add ~/.ssh/staging.pem
#ssh-add ~/.ssh/production.pem

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
# alias tilt='/usr/local/Cellar/tilt/0.20.7/bin/tilt'
alias tilt="/usr/local/bin/tilt"

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
alias gpromm="git pull --rebase origin main"
alias gpromm="git pull --rebase origin main"
alias gpush="git push origin head"
# alias grmm='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias grmm='~/.dot/.clean-merged-branches.sh'
alias gack="git ls-files -oc --exclude-standard | ack -x"

alias convoxp='convox login internal-convox-production-i-373700845.us-east-1.elb.amazonaws.com'
alias convoxs='convox login internal-reverb-staging-i-1652947956.us-east-1.elb.amazonaws.com'
alias l='docker-compose -f $HOME/dev/local/docker-compose.yml'

alias vim="nvim"

ulimit -S -n 8192

PS1='\w$(__git_ps1 " (%s)") \$ '
#PS1='\u $(__git_ps1 "(%s)")\$ '

# Python & pyenv initialization
export PYENV_SHELL=bash

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#source '/usr/local/Cellar/pyenv/1.2.13/completions/pyenv.bash'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/geoff/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

# bit
export PATH="$PATH:/Users/geoff/bin"
# bit end
