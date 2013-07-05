echo 'Symlinking .ackrc'
ln -s .dot_files/.ackrc .ackrc

echo 'Symlinking .gemrc'
ln -s .dot_files/.gemrc .gemrc

echo 'Symlinking .gitconfig'
ln -s .dot_files/.gitconfig .gitconfig

echo 'Symlinking .gitignore'
ln -s .dot_files/.gitignore .gitignore

echo 'Symlinking .rspec'
ln -s .dot_files/.rspec .rspec

echo 'Symlinking .rvmrc'
ln -s .dot_files/.rvmrc .rvmrc

echo 'Symlinking .vim'
rm -rf .vim
ln -s .dot_files/.vim .vim

echo 'Symlinking .vimrc'
ln -s .dot_files/.vimrc .vimrc
