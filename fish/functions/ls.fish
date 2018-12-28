function ls
	if test (which exa)
    exa $argv;
  else
    ls $argv;
  end
end
