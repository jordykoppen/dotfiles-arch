source $DOTFILES/vim/plugins.vim
source $DOTFILES/vim/keymap.vim
source $DOTFILES/vim/startify.vim
source $DOTFILES/vim/coc.vim
source $DOTFILES/vim/nerdtree.vim

set termguicolors
let ayucolor="dark"
colorscheme ayu

set relativenumber
set nowrap

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" Old regexp engine will incur performance issues for yats and old engine is usually turned on by other plugins.
set re=0

" TextEdit might fail if hidden is not set.
set hidden

" use ctrl-c to copy to clipboard register in visual mode
vnoremap <C-c> "+y

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

" function! RipgrepFzf(query, fullscreen)
"   let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
"   let initial_command = printf(command_fmt, shellescape(a:query))
"   let reload_command = printf(command_fmt, '{q}')
"   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
" endfunction
" 
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

let g:fzf_layout = { 'down': '~20%' }

autocmd BufRead .jscsrc set filetype=json
autocmd BufRead .jshintrc set filetype=json
autocmd BufRead .bowerrc set filetype=json
autocmd BufRead .babelrc set filetype=json
autocmd BufRead .eslintrc set filetype=json
autocmd BufRead .prettierrc set filetype=json
autocmd BufRead .tslintrc set filetype=json
autocmd BufRead .dojorc set filetype=json
