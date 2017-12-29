"" vim-plug setup
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'

Plug 'itchyny/lightline.vim'
Plug 'rakr/vim-one'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Initialize plugin system
call plug#end()

set encoding=utf-8

"" color
colorscheme one
set background=dark

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" disable bell
set vb

set ruler
set cursorline

set hidden
set autochdir

set tabstop=4 shiftwidth=4
set expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2
autocmd FileType html setlocal tabstop=2 shiftwidth=2

"" needed for lightline
set laststatus=2

command! DT r !date +\%a\ \%b\ \%d,\ \%H:\%M:\%S\ \%Z
