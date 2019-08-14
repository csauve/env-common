function j
  set term $argv[1]
  set result
  if test -n "$term"
    set result (cat $cwd_hist_file | sk -f $term 2> /dev/null | head -n 1 | awk -F ' ' '{print $2}')
  else
    set result (cat $cwd_hist_file | sk)
  end

  if test -n "$result"
    if test -d $result
      cd $result
    else
      echo "Directory $result does not exist"
      fd . ~ -t d > $cwd_hist_file
    end
    echo $result
  end
end
