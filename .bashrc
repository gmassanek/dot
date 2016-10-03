export GOPATH=$HOME/dev/go
export PATH="$HOME/.rbenv/bin:$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
export PATH="/usr/local/opt/llvm/bin":$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

SPARK_HOME="/usr/local/Cellar/apache-spark/1.5.2"
PATH=$PATH:$SCALA_HOME/bin

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
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gprom="git pull --rebase origin master"
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias grmm='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'

alias convoxp='convox login convox-production-2029365087.us-east-1.elb.amazonaws.com'
alias convoxs='convox login reverb-staging-1222177346.us-east-1.elb.amazonaws.com'

alias vim="nvim"
