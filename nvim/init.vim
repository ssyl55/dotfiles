" defaults
set number
set autoindent
set incsearch
set hlsearch
set ruler
set cursorline
syntax on
filetype plugin indent on

" vim-plug configuration
call plug#begin('~/.local/share/nvim/plugged')

Plug 'iCyMind/NeoSolarized'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" colorscheme
set termguicolors
colorscheme one
set background=dark

" python3 support
let g:python3_host_prog = '/usr/local/bin/python3'

" Airline configuration
let g:airline_theme = 'one'
let g:airline_solarized_bg = 'dark'

" vim-pandoc configuration
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 1
" let g:pandoc#modules#disabled = ["folding"]

func! WritingMode()
	setlocal textwidth=120
	setlocal wrapmargin=0
	setlocal formatoptions+=t
endfu
com! WM call WritingMode()
