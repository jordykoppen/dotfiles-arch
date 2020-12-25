if exists('g:vscode')
  " VSCode Vim
  " navigate between splitting panes
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>

  noremap   qq :q <CR>
  noremap   ss :w <CR>

  inoremap  jj <Esc>
else
  " Normal Neovim
  source $DOTFILES/vim/term_init.vim
endif
