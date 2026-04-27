set number
syntax on
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
nnoremap <F5> :w <bar> :!g++ -Werror -std=c++20 -o %:r % && ./%:r<CR>
