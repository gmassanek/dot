" ---------------------------------------------------------------------------
" Plug
" ---------------------------------------------------------------------------
call plug#begin()

Plug 'gmarik/Vundle.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/syntastic'
Plug 'wakatime/vim-wakatime'
Plug 'skwp/greplace.vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'skwp/vim-spec-finder'
Plug 'tomtom/tcomment_vim'
Plug 'JazzCore/ctrlp-cmatcher'
Plug 'leafgarland/typescript-vim'

Plug 'kassio/neoterm'
Plug 'Shougo/deoplete.nvim'

" Go
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'zchee/deoplete-go', {'do': 'make', 'for': 'go'}

" C/C++/ObjC
Plug 'zchee/deoplete-clang'
Plug 'rhysd/vim-clang-format'

call plug#end()
