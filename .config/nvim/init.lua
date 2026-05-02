--Options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autochdir = true
vim.opt.clipboard:append("unnamedplus")
--Keybinds
vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', vim.cmd.Ex)
vim.keymap.set("n", '<F5>', ':w<CR>:!g++ -Werror -Wall -pedantic -std=c++20 -o main *.cpp <CR>') --compile c++
vim.keymap.set("n", '<leader>fb', ':NvimTreeToggle<CR>') --Toggles File Tree
vim.keymap.set("n", '<F6>', ':tabnew <CR>:terminal<CR>') -- open terminal
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
	'https://github.com/neovim/nvim-lspconfig',-- lsp
	'https://github.com/m4xshen/autoclose.nvim' -- autoclose brackets
})

--setups
--
--Treesitter
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'c++', 'lua' },
	callback = function() 
		vim.treesitter.start()
	end
})
vim.lsp.enable('clangd')
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})
require("autoclose").setup()
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
