curl -fsSL https://starship.rs/install.sh | bash
mkdir -p $HOME/.config/
ln -f -s $DOTFILES/starship/starship.toml $HOME/.config/starship.toml
