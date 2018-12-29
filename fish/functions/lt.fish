function lt
  if test (command -s exa)
    exa -Tl $argv;
  else
    tree $argv;
  end	
end
