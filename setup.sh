# Start
## Install Chrome from Safari
## Login into 1Password extension
## Install github ssh commands
## Clone this repo

# Settings
## Trackpad
  # 1 click turn on tap to click
  # Increase Tracking Speed a couple ticks
## Mouse
  # Secondary Click
  # Increase tracking speed
## Keyboard
  # Modifier Keys: Caps -> ^Cntl
  # Repeat: Max
  # Delay Until Repeat: Short
  # Shortcuts -> Spotlight -> Show Spotlight search -> ^Space
  # Shortcuts -> Show Finder search window
  # Dictation -> Shortcut to Off
## Dock and Menu Bar
  # Automatically hide and show the Dock
## Security & Privacy
  # Screen Recording, add Google Chrome, iTerm
  # Accessibility, add Caffeine, Rectangle

# Brew & Terminal
echo 'Install brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask iterm2
chsh -s /bin/bash

# Vim and bashrc
brew install "vim"
brew install "neovim"

echo 'Symlinking nvim setup'
cd ~/.config
ln -s ~/.dot/nvim nvim
cd ~

# I don't think this is necessary
# git clone https://github.com/VundleVim/Vundle.vim.git nvim/bundle/Vundle.vim/

echo 'Symlinking .bashrc'
rm ~/.bashrc
ln -s .dot/.bashrc ~/.bashrc

echo 'Symlinking .bash_profile'
rm ~/.bash_profile
ln -s .dot/.bash_profile ~/.bash_profile

echo 'Symlinking .git-prompt.sh'
rm ~/.git-prompt.sh
ln -s .dot/.git-prompt.sh ~/.git-prompt.sh

touch ~/.bash_private

## neovim / deoplete dependencies
brew install "pyenv"
brew install "pipenv"
brew install "python"

#python -m pip install setuptools
#python -m pip install --upgrade pynvim
#python2 -m pip install --upgrade pynvim
python3 -m pip install --upgrade pynvim

# run :checkhealth
# gem install neovim
# gem environment


# run :BundleInstall inside vim
# run :UpdateRemotePlugins
# vim should load cleanly


# Dependencies
echo 'Symlinking .ackrc'
ln -s .dot/.ackrc ~/.ackrc

echo 'Symlinking .gemrc'
ln -s .dot/.gemrc ~/.gemrc

echo 'Symlinking .gitconfig'
ln -s .dot/.gitconfig ~/.gitconfig

echo 'Symlinking .gitignore'
ln -s .dot/.gitignore ~/.gitignore

echo 'Symlinking .githelpers'
ln -s .dot/.githelpers ~/.githelpers

echo 'Symlinking .rspec'
ln -s .dot/.rspec ~/.rspec

echo 'Install brew stuff'
brew tap "homebrew/cask"
brew tap "versent/homebrew-taps"

brew install "node"
brew install "nodenv" && \
brew install "awscli" && \
brew install "bash" && \
brew install "bash-completion" && \
brew install "cmake" && \
brew install "convox" && \
brew install "curl" && \
brew install "findutils" && \
brew install "git" && \
brew install "gnu-sed" && \
brew install "go" && \
brew install "icu4c" && \
brew install "jq" && \
brew install "libxml2" && \
brew install "libxslt" && \
brew install "nginx" && \
brew install "openssl" && \
brew install "overmind" && \
brew install "postgres" && \
brew install "protobuf" && \
brew install "protoc-gen-go" && \
brew install "rbenv" && \
brew install "readline" && \
brew install "ruby-build" && \
brew install "saml2aws" && \
brew install "the_silver_searcher" && \
brew install "vcprompt" && \
brew install "wget" && \
brew install --cask  "docker" && \
brew install --cask "visual-studio-code" && \
brew install --cask slack && \
brew install --cask rectangle && \
brew install --cask caffeine && \
brew install ack

#brew install "yarn", args: ["ignore-dependencies"] && \



#npm install -g neovim
#gem install neovim

mkdir ~/Downloads/screenshots
defaults write com.apple.screencapture location ~/Documents/screenshots

# vim go autocomplete
# go get -u github.com/nsf/gocode
  # 'go get' is no longer supported outside a module.


# App Settings
## Rectangle
  # Left Half
  # Right Half
  # Maximize
## ITerm
  # Profiles > Working Directory > Reuse previous session's directory
