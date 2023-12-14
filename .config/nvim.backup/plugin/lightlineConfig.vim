if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {'colorscheme': 'palenight'}

let g:limelight_conceal_guifg = '#313359'

if (g:colors_name is 'dim')
    let g:limelight_conceal_ctermfg = 250
endif

if (g:colors_name is 'dim')
    let g:lightline = {'colorscheme' : 'myeyes'}
else
    let g:lightline = {'colorscheme' : g:colors_name}
endif
