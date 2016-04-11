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

echo 'Symlinking .rvmrc'
ln -s .dot_files/.rvmrc ~/.rvmrc

echo 'Symlinking .vim'
rm -rf .vim
ln -s .dot_files/.vim ~/.vim

echo 'Symlinking .vimrc'
ln -s .dot_files/.vimrc ~/.vimrc

echo 'Install brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Install brew stuff'
brew install vim
brew install go

