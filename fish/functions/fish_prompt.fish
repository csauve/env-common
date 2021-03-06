function cwd_hist
  if not contains (pwd) (cat $cwd_hist_file)
    pwd >> $cwd_hist_file
  end
end

function fish_prompt
  set prev_status $status
  cwd_hist

  #set dir_sig (string join "" (exa -la | string sub -l 1 | sort | uniq -c) | string replace -a " " "" | string replace -a "." "f")
  set pwd_base (basename (prompt_pwd))
  set pwd_dir (string split -r -m 1 $pwd_base (prompt_pwd))[1]

  if test -n "$SSH_CONNECTION" -o (whoami) = root
    print_c $c_secondary (whoami)"@"(hostname -s)" "
  else
    if test $prev_status -eq 0
      print_c $c_secondary "( ° ᴗ °)っ "
    else
      set eye (print_c $fish_color_error "°")
      print_c $c_secondary "( "$eye" - "$eye")っ "
    end
  end
  #print_c $c_faded [$dir_sig]
  print_c $c_faded $pwd_dir
  print_c $c_primary $pwd_base
  print_c normal (__fish_git_prompt)
  print_c normal " > "
end
