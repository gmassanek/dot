" use Y to yank the rest of the line
map Y y$

" move between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" edit vimrc
map <leader>v :sp ~/.config/init.vim<CR><C-W>_
map <leader>V :source ~/.config/init.vim<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" line folding
nnoremap <Space> za

" insert hash rocket
imap <C-l> <Space>=><Space>

" String Whitespace
nmap ,w :StripWhitespace<CR>

" String Whitespace
nmap ,w :StripWhitespace<CR>

" Cntl-/ to toggle comments
map <C-/> :TComment<CR>
imap <C-/> <Esc>:TComment<CR>i

" Format JSON
nmap JQ :%!jq .<CR>
