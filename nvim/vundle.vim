" ---------------------------------------------------------------------------
" Plug
" ---------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
"call vundle#begin("~/.config/nvim/bundle")
call vundle#begin()

" Add something here, then run :PluginInstall

"call plug#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
Plugin 'skwp/greplace.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'skwp/vim-spec-finder'
Plugin 'tomtom/tcomment_vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go', {'for': 'go'}
Plugin 'kassio/neoterm'
Plugin 'github/copilot.vim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'CopilotC-Nvim/CopilotChat.nvim'

" Autocomplete
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

" prereq: go get -u github.com/nsf/gocode
"Plugin 'zchee/deoplete-go', {'do': 'make', 'for': 'go'}

" C/C++/ObjC
Plugin 'zchee/deoplete-clang'
Plugin 'rhysd/vim-clang-format'

call vundle#end()

filetype plugin indent on       " required
