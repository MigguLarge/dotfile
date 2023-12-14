function! s:goyo_leave()
    hi LineNr guibg=none
    hi CursorLineNr guibg=none
    hi Normal guibg=none ctermbg=none

    " font
    hi Comment cterm=italic gui=italic
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()
