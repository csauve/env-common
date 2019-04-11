# Defined in /var/folders/6b/pwmqmmjs6y1fmpsc9gnx6cvhsfvkky/T//fish.ce8bOI/f.fish @ line 2
function f
	#todo: fallback to (find . -type f -name "$argv*")[1]
  fzf -1 -q $argv;
end
