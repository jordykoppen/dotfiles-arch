# Create dir
mkdir -p $HOME/.local/share/
# Create symbolic link from dotfiles location to fonts dir
ln -s $DOTFILES/fonts $HOME/.local/share/fonts
# Rebuild font cache
fc-cache -f -v
