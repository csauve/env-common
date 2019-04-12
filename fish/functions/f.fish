# Defined in /var/folders/6b/pwmqmmjs6y1fmpsc9gnx6cvhsfvkky/T//fish.uDCMpo/f.fish @ line 2
function f
	#todo: fallback to (find . -type f -name "$argv*")[1]
  set -x FZF_DEFAULT_COMMAND 'fd --type f'
  fzf --preview 'bat --color=always --style=numbers {}' -1 -q $argv;
end
