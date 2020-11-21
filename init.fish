set -Ux DOTFILES $HOME/dotfiles
set -Ux EDITOR nvim

for file in $DOTFILES/**/init.fish
  echo "Initializing: $file"
  fish $file
end

echo "Initialization done"
