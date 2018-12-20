set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'verbose'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

set c_faded "555"
set c_primary "f0f"
set c_primary_faded "909"
set c_secondary "fff"
set c_secondary_faded "099"

function print_c
  set_color $argv[1]
  echo -n $argv[2]
  set_color normal
end

set cwd_hist_file ~/.cwdhist
