function ll
  if test (command -s exa)
    exa -l $argv;
  else
    ls -l $argv;
  end
end
