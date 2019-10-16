set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'verbose'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

set fish_color_normal "#bad2d6" #the default color
set fish_color_command "#3da0bf" #the color for commands
set fish_color_quote "#6bdba1" #the color for quoted blocks of text
set fish_color_redirection "#db86ba" #the color for IO redirections
set fish_color_end "#fdc198" #the color for process separators like ';' and '&'
set fish_color_error "#c82438" #the color used to highlight potential errors
set fish_color_param "#62cdcd" #the color for regular command parameters
set fish_color_comment "#666666" #the color used for code comments
set fish_color_match "#0f111e" #the color used to highlight matching parenthesis
set fish_color_selection "#db86ba" #the color used when selecting text (in vi visual mode)
set fish_color_search_match "#0f111e" #used to highlight history search matches and the selected pager item (must be a background)
set fish_color_operator "#db86ba" #the color for parameter expansion operators like '*' and '~'
set fish_color_escape "#fdc198" #the color used to highlight character escapes like '\n' and '\x70'
set fish_color_autosuggestion "#666666" #the color used for autosuggestions
set fish_color_cancel "#666666" #the color for the '^C' indicator on a canceled command


set c_faded "#666666"
set c_primary "#db86ba"
set c_primary_faded "#666666"
set c_secondary "#bad2d6"
set c_secondary_faded "#666666"

function print_c
  set_color $argv[1]
  echo -n $argv[2]
  set_color normal
end

set cwd_hist_file ~/.cwdhist
