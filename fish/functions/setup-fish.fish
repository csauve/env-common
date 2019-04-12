function setup-fish
  set -Ux EDITOR vim
  set -Ux LSCOLORS GxFxCxDxBxegedabagaced
  set -U fish_user_paths ~/bin ~/.cargo/bin ~/.npm/bin

  echo "Done!"
end
