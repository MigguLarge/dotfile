colo dracula
" set termguicolors
let g:gruvbox_italic=1
let g:dracula_colorterm = 0
" set background=dark
" hi Normal guibg=NONE ctermbg=NONE

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    colo dracula
else
    colo dim
endif

if (g:colors_name == 'dracula')
    highlight Normal guibg=#282828
endif

if (g:colors_name isnot 'dim')
    set termguicolors
endif

highlight Comment cterm=italic gui=italic
