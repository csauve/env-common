function lt
  if test (command -s exa)
    exa -Tl --git-ignore $argv;
  else
    tree $argv;
  end	
end
