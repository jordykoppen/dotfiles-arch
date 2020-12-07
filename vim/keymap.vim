" navigate between splitting panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap   qq :q <CR>
noremap   ss :w <CR>

inoremap  jj <Esc>

" Source Vim config
noremap so :so $MYVIMRC<CR>

map s <Plug>Sneak_s
map S <Plug>Sneak_S

" FZF
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-r> :Rg<CR>

" use ctrl-c to copy to clipboard register in visual mode
vnoremap <C-c> "+y
