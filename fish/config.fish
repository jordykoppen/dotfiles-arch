for file in (ls $DOTFILES/**/alias.fish | grep -v fish/config.fish)
  source $file
end
