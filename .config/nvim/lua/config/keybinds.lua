vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", '<F5>', ':w<CR>:!g++ -Werror -std=c+20 -o main *.cpp && ./%r<CR>')
