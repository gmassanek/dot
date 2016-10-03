let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#clang#libclang_path = "/usr/local/Cellar/llvm/3.8.1/lib/libclang.dylib"
let g:deoplete#sources#clang#clang_header = "/usr/local/Cellar/llvm/3.8.1/include/clang"
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
