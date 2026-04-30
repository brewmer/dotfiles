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
vim.keymap.set("n", '<F5>', ':w<CR>:!g++ -Werror -Wall -pedantic -std=c++20 -o main * && ./main<CR>')
vim.keymap.set("n", '<leader>fb', ':NvimTreeToggle<CR>') --Toggles File Tree
vim.keymap.set("n", '<leader>fq', ':NvimTreeFocus<CR>' ) --Focuses File Tree


--Add Packages
vim.pack.add({
	'https://github.com/nvim-tree/nvim-web-devicons', -- icons for formatting
	'https://github.com/nvim-treesitter/nvim-treesitter', -- features?
	'https://github.com/rebelot/kanagawa.nvim', -- theme "Kanagawa"
	'https://github.com/mason-org/mason.nvim', -- lsp installer
	'https://github.com/nvim-tree/nvim-tree.lua', -- embedded file tree
	'https://github.com/ibhagwan/fzf-lua', -- fuzzy finder
	'https://github.com/nvim-lualine/lualine.nvim', --bottom bar
	'https://github.com/lukas-reineke/indent-blankline.nvim', -- tab blocking
	'https://github.com/neovim/nvim-lspconfig' -- lsp
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
vim.lsp.enable('clangd')
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
