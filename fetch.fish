#!/usr/bin/env fish

set IMG_WIDTH 58
set IMG_HEIGHT 36
set INFO_HDR_WIDTH 12

function pad_right
  set s $argv[1]
  set n $argv[2]
  set len (string length $s)
  echo $s(string repeat -n (math $n - $len) " ")
end

function info
  echo -n (string repeat -n $IMG_WIDTH " ")
  echo -n "  "
  echo -n (print_c $c_primary (pad_right $argv[1] $INFO_HDR_WIDTH)" ")
  echo $argv[2]
end

function lines
  for x in (seq $argv[1])
    echo
  end
end

clear
kitty +icat --place $IMG_WIDTH"x"$IMG_HEIGHT"@0x0" ~/pictures/wallpapers/active

info "Distro" "bTw I uSe ArCh!1"
info "Kernel" (pacman -Q linux)
info "Packages" (pacman -Q | wc -l)
info "WM" "i3-gaps-next-git"
info "Bar" (pacman -Q polybar)
info "Compositor" "compton-tyrone-git"
info "Shell" (pacman -Q fish)
info "Terminal" (pacman -Q kitty)
info "Font" "Mononoki (edit)"
info "Papes" "Leonid Kolyagin"
info "CPU" "i7-2600K @ 3.40GHz"
info "Memory" "8GB"
info "GPU" "GTX 660 Ti"
lines 1
