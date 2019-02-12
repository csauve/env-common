"enable line numbers
"set nu
"highlight LineNr ctermfg=238

"indents
filetype indent on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

autocmd FileType rust setlocal shiftwidth=4 tabstop=4

"turn off visual bell & flash
set vb t_vb= 

"ignore case in search
set ic

"highlight all matches
set hls

"line breaking
set lbr

syntax on
colorscheme delek
