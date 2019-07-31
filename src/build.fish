#!/usr/bin/fish
node config.js > config.json
for src_file in **/*.mustache
  set output_file (string replace ".mustache" "" $src_file)
  mustache config.json $src_file > ../$output_file
end
