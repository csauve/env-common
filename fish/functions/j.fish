function j
  set term $argv[1]
  set result
  if test -n "$term"
    set result (cat $cwd_hist_file | sk -f "$term" --tiebreak=score,end,index | awk '{printf "%d %s\n", length($0), $0}' | sort -n -r | awk -F ' ' '{print $2 " " $3}' | sort -n -s | awk -F ' ' '{print $2}' | tail -n 1)
  else
    set result (cat $cwd_hist_file | sk --tiebreak=score,end,index --ansi --preview "exa --color=always -l {}")
  end

  if test -n "$result"
    if test -d $result
      cd "$result"
    else
      echo "Directory $result does not exist"
      fd . ~ -t d > $cwd_hist_file
    end
    echo $result
  end
end
