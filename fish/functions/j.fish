# build an index with fd -a --type d -E "node_modules" -E "htdocs" -E "Library" > ~/.cwdhist
function j
  set term $argv[1]
  set result (grep -i $term $cwd_hist_file | awk '{print length, $0}' | sort -n | head -n 1 | cut -d" " -f2-)
  if test -d $result
    cd $result
  else
    echo "Directory $result does not exist"
    #grep -v $result $cwd_hist_file > $cwd_hist_file
  end
  echo $result
end
