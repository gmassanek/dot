" ---------------------------------------------------------------------------
"  Colors/Theme
" ---------------------------------------------------------------------------
:set t_Co=256
colorscheme eddie
syntax on
syntax enable

" ----------------------------------------------------------------------------
"  Basics
" ----------------------------------------------------------------------------
set nocompatible
let mapleader = ","
set history=1000                              " lots of command line history
"set viminfo='10,\"100,:20,%,n~/.viminfo       " remember certain things when we exit
set autoread                                  " reload files changed outside of Vim
set autowrite                                 " some commands should cause an automatic write
set title                                     " sets the title of the terminal based on filename
set visualbell              " quiet
set noerrorbells            " quiet

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------
set number                            " show line numbers
set ruler                             " show the cursor position all the time
set backspace=start,indent,eol        " allow backspacing over anything in insert mode
set wm=2                              " wrap margin on the right

" ----------------------------------------------------------------------------
"  Text formatting
" ----------------------------------------------------------------------------
set autoindent             " automatically indent new lines
set expandtab              " expand tabs to spaces
set nosmarttab             " no tabs, thanks.
set nowrap                 " do not wrap lines
set softtabstop=2          " yerp
set shiftwidth=2
set tabstop=4

" ----------------------------------------------------------------------------
"  Line Folkding
" ----------------------------------------------------------------------------
set foldmethod=indent

" ----------------------------------------------------------------------------
"  Backups
" ----------------------------------------------------------------------------
set nobackup                           " do not keep backups after close
set nowritebackup                      " do not keep a backup while working
set noswapfile                         " don't keep swp files either
set foldlevelstart=100

" ---------------------------------------------------------------------------
"  Misc stuff
" ---------------------------------------------------------------------------
set clipboard+=unnamed
set grepprg=ack
set grepformat=%f:%l:%m

"set completeopt=longest,menu,preview        " insert mode comletion options
"set complete=.
"set lines=79 columns=272
"
" ---------------------------------------------------------------------------
"  Jump to last saved position of buffer when re-opening
" ---------------------------------------------------------------------------
augroup JumpCursorOnEdit
 au!
 autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif
 " Need to postpone using "zv" until after reading the modelines.
 autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif
augroup END

" -------------------------------------------------------------------------
"  CTAGS
" -------------------------------------------------------------------------
set tags+=tags                            " Set ctags
set tags+=.tags
set tags+=.gemtags                         " Set ctags

" -------------------------------------------------------------------------
"  Searching
" -------------------------------------------------------------------------
set ignorecase                             " Ignore case by default when searching
set smartcase                              " Switch to case sensitive mode if needle contains uppercase characters

" Change cursor type for iTerm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" SYNTAX
" let g:syntastic_ruby_checkers=['rubylint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'coffee'], 'passive_filetype': ['go'] }
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['jshint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

