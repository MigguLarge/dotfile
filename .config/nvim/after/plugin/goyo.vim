nnoremap <leader>gy <cmd>Goyo<cr>

let g:goyo_width=85

function! s:goyo_enter()
	set number
	set relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
