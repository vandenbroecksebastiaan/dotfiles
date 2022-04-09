" Syntax and highlighting
syntax on
highlight Comment ctermfg=28
set number

" Directory to store back-up files
set backupdir=~/.cache/nvim

" Using system clipboard
set clipboard=unnamedplus

" Enable mouse
set mouse=a

" Relative line numbers
set relativenumber

" Rempap escape key
::imap jj <Esc>

" Don't show the current mode
set noshowmode

" Make the background transparent
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Mode Settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

let maplocalleader = '<'

" Plugings using vi-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gaalcaras/ncm-R'
Plug 'jpalardy/vim-slime'
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" For the vim airline
let g:airline#extensions#tabline#enabled = 1

" For slime
let g:slime_target = "neovim"
" let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
let g:slime_python_ipython = 1

" Python highlighting
let g:python_highlight_all = 1

" Initialize plugin system
call plug#end()

" Colorscheme
colorscheme dracula
