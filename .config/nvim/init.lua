--Options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
--Keybinds
vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', vim.cmd.Ex)
vim.keymap.set("n", '<F5>', ':w<CR>:!g++ -Werror -Wall -Pedantic -std=c++20 -o main * && ./%r<CR>')
vim.keymap.set("n", '<leader>fb', ':NvimTreeToggle<CR>') --Toggles File Tree
vim.keymap.set("n", '<leader>fq', ':NvimTreeFocus<CR>' ) --Focuses File Tree


--Add Packages
vim.pack.add({
	'https://github.com/nvim-tree/nvim-web-devicons',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/rebelot/kanagawa.nvim',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/nvim-tree/nvim-tree.lua',
	'https://github.com/ibhagwan/fzf-lua',
	'https://github.com/nvim-lualine/lualine.nvim',
	'https://github.com/lukas-reineke/indent-blankline.nvim'
})

--setups
--
--Treesitter
vim.api.nvim_create_autocmd('FileType', {
	pattern = { '<filetype>' },
	callback = function() 
		vim.treesitter.start()
		vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		vim.wo[0][0].foldmethod = 'expr'
	end
})

require("ibl").setup()
require("nvim-tree").setup()
require("mason").setup()
require("fzf-lua").setup()
require("lualine").setup({
	options = {theme = 'kanagawa'}
})

--Color scheme
vim.cmd("colorscheme kanagawa")
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
vim.api.nvim_set_hl(0, "CursorLineNr", {bg = "none"})
