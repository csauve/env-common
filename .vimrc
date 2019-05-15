"enable line numbers
set nu

set cursorline

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
set wrap lbr "wrap on words

"move by display lines for wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

syntax on
colorscheme delek
autocmd ColorScheme * hi LineNr ctermfg=240
autocmd ColorScheme * hi CursorLineNR ctermfg=245
autocmd ColorScheme * hi CursorLine cterm=NONE ctermbg=235
