" ---------------------------------------------------------------------------
" Vundle
" ---------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on

"Bundle 'wakatime/vim-wakatime'
