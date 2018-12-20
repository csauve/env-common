function cwd_hist
  if not contains (pwd) (cat $cwd_hist_file)
    pwd >> $cwd_hist_file
  end
end

function fish_prompt
  cwd_hist

  set pwd_base (basename (prompt_pwd))
  set pwd_dir (string split -r -m 1 $pwd_base (prompt_pwd))[1]

  print_c $c_secondary (whoami)"@"(hostname -s)" "
  print_c $c_faded $pwd_dir
  print_c $c_primary $pwd_base
  print_c normal (__fish_git_prompt)
  print_c normal " > "
end
