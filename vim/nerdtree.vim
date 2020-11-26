"  sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  
" Initial NERDTree width
" let NERDTreeWinSize=50

" Close NERDtree when files was opened
" let NERDTreeQuitOnOpen=1

" Show NERDTree bookmarks
let NERDTreeShowBookmarks=1

" Display arrows instead of ascii art in NERDTree
let NERDTreeDirArrows=1

" Change current working directory based on root directory in NERDTree
let NERDTreeChDirMode=2

" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

let NERDTreeShowHidden=1
