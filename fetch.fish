#!/usr/bin/fish

set IMG_WIDTH 64
set IMG_HEIGHT 36
set INFO_HDR_WIDTH 9

function pad_left
  set s $argv[1]
  set n $argv[2]
  set len (string length $s)
  echo (string repeat -n (math $n - $len) " ")$s
end

function info
  echo -n (string repeat -n $IMG_WIDTH " ")
  echo -n " "
  echo -n (print_c $c_faded (pad_left $argv[1] $INFO_HDR_WIDTH)" ")
  echo $argv[2]
end

function lines
  for x in (seq $argv[1])
    echo
  end
end

clear
kitty +icat --place $IMG_WIDTH"x"$IMG_HEIGHT"@0x0" ~/pictures/wallpapers/active

lines 1
info "Distro" "bTw I uSe ArCh!1"
info "Kernel" (pacman -Q linux)
info "Packages" (pacman -Q | wc -l)
lines 1
info "WM" (pacman -Q i3-gaps)
info "Shell" (pacman -Q fish)
info "Terminal" (pacman -Q kitty)
info "Font" "Mononoki (edit)"
info "Papes" "Leonid Kolyagin"
lines 1
info "CPU" "i7-2600K @ 3.40GHz"
info "Memory" "8GB"
info "GPU" "GTX 660 Ti"
lines 1
