function l
	if test (command -s exa)
    exa $argv;
  else
    ls $argv;
  end
end
