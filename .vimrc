set number
syntax on
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4 
set makeprg=g++\ -Werror\ -std=c++20\ -o\ %:r\ %\ &&\ ./%:r
nnoremap <F5> :make<CR>
