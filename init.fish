set -Ux DOTFILES $HOME/dotfiles
set -Ux EDITOR nvim
set -Ux N_PREFIX $HOME/n
set -gx PATH $N_PREFIX/bin $PATH

for file in $DOTFILES/**/install.fish
  echo "Initializing: $file"
  fish $file
end

echo "Initialization done"
