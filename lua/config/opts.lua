vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Fat cursor
-- vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- Highlight search patterns
vim.cmd("set hlsearch")

-- Relative line numbers
vim.cmd("set number relativenumber")

vim.opt.termguicolors = true
vim.opt.conceallevel = 0

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.hl.on_yank({higroup="Visual", timeout=200})
augroup END
]])
