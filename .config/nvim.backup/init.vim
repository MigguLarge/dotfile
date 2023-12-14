call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'morhetz/gruvbox'
Plug 'dylanaraps/wal.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'shinchu/lightline-seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
Plug 'maxmellon/vim-jsx-pretty'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
 
call plug#end()

syntax on

set tabstop=4 softtabstop=4
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
set colorcolumn=80
set laststatus=2
set noshowmode
:set number relativenumber
:set nu rnu
highlight ColorColumn ctermbg=0 guibg=lightgrey
let ayucolor="light"

" Goyo
let g:goyo_width='95%'
let g:goyo_height='95%'

" Emmet
let g:user_emmet_leader_key=','

" Mappings
let mapleader=" "
imap jk <Esc>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>] :bnext<CR>
nmap <Leader>[ :bprevious<CR>
nmap <Leader>w :bd<CR>
nmap <Leader>g :Goyo<CR>
nmap <Leader>l :Limelight!!<CR>

" Colorschemes
" set termguicolors
" let g:gruvbox_italic=1
" colo dim
" set background=dark

" dark mode enabled?
" if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
"     colorscheme nord
" else
"     colorscheme dim
" endif

" highlight Comment cterm=italic gui=italic

" Highlighter Settings
let g:jsx_ext_required = 1

" Prettier and ALE Settings
let g:prettier#config#config_precedence = 'file-override'

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'

" Lightline
" if !has('gui_running')
"   set t_Co=256
" endif
" 
" let g:lightline = {'colorscheme': 'wal'}
