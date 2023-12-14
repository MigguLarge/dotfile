call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ntk148v/vim-horizon'
Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'nordtheme/vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
call plug#end()

" vim settings
syntax on
set tabstop=4
set expandtab
set nowrap
set incsearch
set smartcase
set autoindent
set cindent
set autochdir
set shiftwidth=4
set tabstop=4
set undodir
set nobackup
set laststatus=2
set noshowmode
set number
set nu

" colorscheme
let g:seoul256_background = 236
let g:gruvbox_contrast_dark = 'hard'

" mapping
let mapleader=" "
imap jk <Esc>
nmap <silent> <Leader>] :bnext<CR>
nmap <silent> <Leader>[ :bprevious<CR>
nmap <silent> <Leader>w :bd<CR>
nmap <silent> <Leader>g :Goyo<CR>

:command! W w
:command! Q q

" auto expanding
inoremap (<CR> (<CR>)<C-c>O
inoremap (<CR> (<CR>)<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap [<CR> [<CR>]<C-c>O
inoremap [<CR> [<CR>]<C-c>O

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" coc.nvim

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
