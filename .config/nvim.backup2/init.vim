
" Vim-plug :P
call plug#begin()

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jeffkreeftmeijer/vim-dim'
Plug 'dracula/vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arzg/vim-substrata'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'owozsh/amora'
Plug 'KeitaNakamura/neodark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'ntk148v/vim-horizon'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'rose-pine/neovim', { 'as': 'rose-pine' }
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'challenger-deep-theme/vim', {'as': 'challenger-deep-theme'}
Plug 'wadackel/vim-dogrun'
Plug 'projekt0n/github-nvim-theme'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'digitaltoad/vim-pug'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'

Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

" Vim settings
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
set undodir
set nobackup
set laststatus=2
set noshowmode
set number relativenumber
set nu rnu

" Etc
let g:seoul256_light_background = 252
let g:seoul256_background = 236

let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'soft'

let ayucolor="light"

" Mappings
let mapleader=" "
imap jk <Esc>
nmap <silent> <Leader>] :bnext<CR>
nmap <silent> <Leader>[ :bprevious<CR>
nmap <silent> <Leader>w :bd<CR>
nmap <silent> <Leader>g :Goyo<CR>
nmap <silent> <Leader>l :Limelight!!<CR>
nnoremap <silent> <M-Up> :move-2<CR>
nnoremap <silent> <M-Down> :move+<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
inoremap <silent> <M-Up> <Esc>:move-2<CR>i
inoremap <silent> <M-Down> <Esc>:move+<CR>i

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

:command! W w
:command! Q q

" auto expanding
inoremap (<CR> (<CR>)<C-c>O
inoremap (<CR> (<CR>)<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap [<CR> [<CR>]<C-c>O
inoremap [<CR> [<CR>]<C-c>O

" Goyo
let g:goyo_width = '70%'
let g:goyo_height = '90%'

" Limelight
let g:limelight_default_coefficient = 0.9

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" ALe
 let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\
\}
 let g:ale_fix_on_save = 1
 let g:ale_completion_enabled = 0
 let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all --tab-width 4'

" emmet-vim
let g:user_emmet_leader_key=','

" go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

lua require('plugins.init')
