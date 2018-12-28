function ll
  if test (which exa)
    exa -l $argv;
  else
    ls -l $argv;
  end
end
