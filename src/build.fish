#!/usr/bin/fish

set theme $argv[1]
node $theme > config.json
for src_file in **/*.mustache
  set output_file (string replace ".mustache" "" $src_file)
  mustache config.json $src_file > ../$output_file
end
rm config.json
