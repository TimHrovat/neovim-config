-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.o.splitbelow = true

vim.opt.guicursor = ""

vim.g.autoformat = false

vim.g.lazyvim_picker = "telescope"

vim.g.lazyvim_php_lsp = "intelephense"

vim.g.dbs = {
    evrtec_local = 'mysql://evrtec:docker@localhost:33066/evrtec',
    evrtec_test_local = 'mysql://evrtec:docker@localhost:33066/testing',
}

vim.g.snacks_animate = false
