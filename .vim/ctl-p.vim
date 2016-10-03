" control p plugin
set wildignore+=doc/*,node_modules,coverage/**,tmp,bower_components,*Godeps/*,.docker-volums/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*Godeps/*
let g:ctrlp_user_command =
  \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn|\.docker-volumes|doc$"'
let g:ctrlp_use_caching = 0
let g:ctrlp_by_filename = 0
let g:ctrlp_switch_buffer = 0

let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>

let g:ctrlp_map = ',f'
nnoremap <silent> ,f :CtrlP<CR>

let g:ctrlp_map = ',f'
nnoremap <silent> ,f :CtrlP<CR>

nnoremap <C-p> :CtrlP<CR>

nnoremap <silent> ,b :CtrlPBuffer<cr>
