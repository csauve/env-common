# Defined in /var/folders/6b/pwmqmmjs6y1fmpsc9gnx6cvhsfvkky/T//fish.hDxrx7/f.fish @ line 2
function f
	#todo: fallback to (find . -type f -name "$argv*")[1]
  set -x FZF_DEFAULT_COMMAND 'fd --type f'
  set preview_cmd 'bat --color=always --style=numbers {}'
  if test $argv
    fzf --preview $preview_cmd -1 -q $argv;
  else
    fzf --preview $preview_cmd -1;
  end
end
