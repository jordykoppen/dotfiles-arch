for file in (ls $DOTFILES/**/alias.fish | grep -v fish/config.fish)
  source $file
end

if type -q starship
  starship init fish | source
end
