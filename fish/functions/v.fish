# Defined in /tmp/fish.mp4aEy/v.fish @ line 2
function v
	vim (find . -type f -name "$argv*")[1];
end
