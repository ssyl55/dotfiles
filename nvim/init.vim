set statusline=[%n]\ %f\ %=\ %m%r%w%h%y\ [%l/%L,%c]\ %p%%\ %{strftime('%H:%M')}

" Tabbing
autocmd Filetype c		setlocal tabstop=8 shiftwidth=8 noexpandtab
autocmd Filetype javascript	setlocal tabstop=4 shiftwidth=4 expandtab
autocmd Filetype markdown	setlocal tabstop=4 shiftwidth=4 expandtab spell spelllang=en_us
autocmd Filetype text		set wrap textwidth=120 tabstop=4 shiftwidth=4 expandtab spell spelllang=en_us

let g:markdown_folding=1

set number
set cursorline

set ignorecase
set smartcase

set path+=**
set wildmenu

command! Tags !ctags -R .

set foldmethod=syntax
set foldnestmax=1

" Color Scheme
set termguicolors
set background=dark
colorscheme molokai

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

runtime coc.vim

" transparent background
highlight Normal guibg=NONE ctermbg=NONE
highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
highlight clear LineNr
highlight clear SignColumn
highlight clear StatusLine
