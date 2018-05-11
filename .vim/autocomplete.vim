let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('max_list', 20)
call deoplete#custom#option('auto_complete_delay', 200)

" Suggestion navigation
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr><C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

" C and C++
let g:deoplete#sources#clang#libclang_path = "/usr/local/Cellar/llvm/3.8.1/lib/libclang.dylib"
let g:deoplete#sources#clang#clang_header = "/usr/local/Cellar/llvm/3.8.1/include/clang"
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
