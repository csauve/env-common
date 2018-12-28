function lt
  if test (which exa)
    exa -Tl $argv;
  else
    tree $argv;
  end	
end
