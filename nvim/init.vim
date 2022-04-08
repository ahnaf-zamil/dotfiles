" Plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'kovetskiy/sxhkd-vim'

call plug#end()

" Configs
set relativenumber
set encoding=UTF-8

set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2

syntax on

" Variables
let g:NERDTreeIgnore = ['^node_modules$']

" Custom keymaps
nmap <C-B> :NERDTreeToggle<CR>
nmap <C-T> :ToggleTerm<CR>

" Custom commands
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

