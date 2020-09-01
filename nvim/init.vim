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

" Color Scheme
set termguicolors
colorscheme molokai
