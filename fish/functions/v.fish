# Defined in /var/folders/6b/pwmqmmjs6y1fmpsc9gnx6cvhsfvkky/T//fish.Na1FOC/v.fish @ line 2
function v
	set file (f $argv)
	test $file; and vim $file
end
