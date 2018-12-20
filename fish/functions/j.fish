function j
  set term $argv[1]
  set result (grep -i $term $cwd_hist_file | sort | head -n 1)
  cd $result
  echo $result
end