" NERDTree:
" Enable nice colors
let NERDChristmasTree = 1

" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1

" Make bookmarks visible
let NERDTreeShowBookmarks = 1

" Show hidden files
let NERDTreeShowHidden = 1

" Don't hijack NETRW
let NERDTreeHijackNetrw = 1
let NERDTreeIgnore=['\.$', '\~$', '.DS_Store']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" ==== NERD tree
" Alt-Shift-N for nerd tree
nmap <C-N> :NERDTreeToggle<CR>
