#! /bin/fish
set -Ux N_PREFIX $HOME/n
set -U fish_user_paths $N_PREFIX/bin $fish_user_paths

yes | curl -L https://git.io/n-install | bash
