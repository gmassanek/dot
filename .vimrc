call pathogen#runtime_append_all_bundles()

set nocompatible

let mapleader = ","

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>n :NERDTreeFind<CR>

map <leader>1 :cprevious <CR>
map <leader>2 :cnext <CR>

map <leader>= :Tabularize /\|<CR>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

map <leader>j ]m
map <leader>J ]M
map <leader>k [m
map <leader>K [M

map <leader>v :sp ~/.vimrc<CR><C-W>_
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <leader>f :FuzzyFinderTextMate<CR>
map <leader>F :ruby finder.rescan!<CR>

map <leader>A :Ack<cword><CR>
map <leader>a :Ack<Space>

map <leader>r :Rake<CR>
map <leader>R :.Rake<CR>

nmap <leader><Enter> _i<Enter><Esc>
nmap <leader><Space> i<Space><Esc>

nmap <leader>: ds"i:<Esc>e
nmap <leader>" bhxcsw"

nmap <C-\> <C-]>
nmap g<C-\> g<C-]>

nmap <Leader>q :QFix<CR>

imap ;; <Esc>
imap <S-Space> <C-n>
imap <C-l> <Space>=><Space>


set clipboard+=unnamed
set nowrap
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol
set number
set incsearch
set ruler
set grepprg=ack
set grepformat=%f:%l:%m
set autowrite
set noerrorbells
set visualbell
set guioptions=eg   " disable scrollbars, etc

let g:fuzzy_ignore="tmp/**/*,vendor/gems/compass**/**/*,vendor/gems/haml**/**/*,app/stylesheets/*.sass,vendor/**/*"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Surround plugin - allow # to be used for string interpolation.
autocmd FileType ruby let g:surround_113 = "#{\r}"   " v
autocmd FileType ruby let g:surround_35  = "#{\r}"   " #

set completeopt=longest,menu,preview
set complete=.
set lines=79 columns=272
set laststatus=2
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
set history=256

set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=\ %{fugitive#statusline()}   " fugitive
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position


let NERDTreeWinSize=41
colorscheme vividchalk
syntax on

filetype plugin indent on

au FocusLost * :wall

augroup myfiletypes
  "clear old autocmds in group
  autocmd!

  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml set ai sw=2 sts=2 et
augroup END

augroup markdown
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:>
augroup END

set wm=2

let g:liquid_highlight_types=["html","erb=eruby","html+erb=eruby.html"]

" Tell vim to remember certain things when we exit
"  '10 : marks will be remembered for up to 10 previously edited files
"  "100 : will save up to 100 lines for each register
"  :20 : up to 20 lines of command-line history will be remembered
"  % : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" when we reload, tell vim to restore the cursor to the saved position
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



function! HandleURI()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
	  exec "!open \"" . s:uri . "\""
  else
	  echo "No URI found in line."
  endif
endfunction
nmap <Leader>b :call HandleURI()<CR>


" Allow toggling of the quickfix window
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen 15"
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END


