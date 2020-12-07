source $DOTFILES/vim/plugins.vim
source $DOTFILES/vim/keymap.vim
source $DOTFILES/vim/startify.vim
source $DOTFILES/vim/coc.vim
source $DOTFILES/vim/nerdtree.vim

set encoding=UTF-8
set termguicolors
let ayucolor="dark"
colorscheme ayu

set relativenumber
set nowrap
set noshowmode

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" Remove tilde on empty lines
let &fcs='eob: '

" Old regexp engine will incur performance issues for yats and old engine is usually turned on by other plugins.
set re=0

" TextEdit might fail if hidden is not set.
set hidden


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let g:lightline = {
  \ 'colorscheme': 'ayu'
  \ }

let g:vim_jsx_pretty_colorful_config = 1

autocmd BufRead .jscsrc set filetype=json
autocmd BufRead .jshintrc set filetype=json
autocmd BufRead .bowerrc set filetype=json
autocmd BufRead .babelrc set filetype=json
autocmd BufRead .eslintrc set filetype=json
autocmd BufRead .prettierrc set filetype=json
autocmd BufRead .tslintrc set filetype=json
autocmd BufRead .dojorc set filetype=json

highlight Comment cterm=italic
hi link xmlEndTag xmlTag
hi htmlArg gui=italic
hi Comment gui=italic
hi Type gui=italic
hi jsxAttrib gui=italic
hi htmlArg cterm=italic
hi jsxAttrib cterm=italic
hi Comment cterm=italic
hi Type cterm=italic

hi VertSplit guifg=#243340
