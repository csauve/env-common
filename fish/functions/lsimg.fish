function lsimg
  for file in ./*
    echo $file
    kitty +kitten icat $file
  end
end
