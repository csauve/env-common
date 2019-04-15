function j
  set term $argv[1]
  set result (grep -i $term $cwd_hist_file | sort | head -n 1)
  if test -d $result
    cd $result
  else
    echo "Directory $result does not exist"
    #grep -v $result $cwd_hist_file > $cwd_hist_file
  end
  echo $result
end
