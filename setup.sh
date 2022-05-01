echo 'Symlinking .bashrc'
rm ~/.bashrc
ln -s .dot_files/.bashrc ~/.bashrc

echo 'Symlinking .bash_profile'
rm ~/.bash_profile
ln -s .dot_files/.bash_profile ~/.bash_profile

echo 'Symlinking .ackrc'
ln -s .dot_files/.ackrc ~/.ackrc

echo 'Symlinking .gemrc'
ln -s .dot_files/.gemrc ~/.gemrc

echo 'Symlinking .gitconfig'
ln -s .dot_files/.gitconfig ~/.gitconfig

echo 'Symlinking .gitignore'
ln -s .dot_files/.gitignore ~/.gitignore

echo 'Symlinking .githelpers'
ln -s .dot_files/.githelpers ~/.githelpers

echo 'Symlinking .rspec'
ln -s .dot_files/.rspec ~/.rspec

echo 'Symlinking .vim'
ln -s .dot_files/.vim ~/.vim

echo 'Symlinking .vimrc'
#cp .dot_files/.vimrc ~/.config/nvim/init.vim
ln .dot_files/.vimrc ~/.config/nvim/init.vim

echo 'Install brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Install brew stuff'
brew tap "caskroom/cask"
brew tap "reverbdotcom/rv"
brew tap "versent/homebrew-taps"
brew tap "reverbdotcom/reverb"

brew install node@10

brew install "nodenv"
brew install "awscli"
brew install "bash"
brew install "bash-completion"
brew install "cmake"
brew install "convox"
brew install "curl"
brew install "findutils"
brew install "git"
brew install "gnu-sed"
brew install "go"
brew install "icu4c"
brew install "jq"
brew install "libxml2"
brew install "libxslt"
brew install "macvim"
brew install "neovim"
brew install "nginx"
brew install "nvim"
brew install "openssl"
brew install "overmind"
brew install "pipenv"
brew install "postgres"
brew install "protobuf"
brew install "protoc-gen-go"
brew install "protopkg"
brew install "pyenv"
brew install "python@3.8"
brew install "rbenv"
brew install "readline"
brew install "ruby-build"
brew install "rv"
brew install "saml2aws"
brew install "the_silver_searcher"
brew install "vcprompt"
brew install "vim"
brew install "wget"
brew install "yarn", args: ["ignore-dependencies"]
cask install "docker"
cask install "visual-studio-code"


python -m pip install setuptools
python -m pip install --upgrade pynvim
python2 -m pip install --upgrade pynvim
python3 -m pip install --upgrade pynvim

#npm install -g neovim
#gem install neovim

mkdir ~/Downloads/screenshots
defaults write com.apple.screencapture location ~/Documents/screenshots

# vim go autocomplete
go get -u github.com/nsf/gocode
