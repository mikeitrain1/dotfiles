vim.o.undofile = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.cmd.colorscheme("retrobox")
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.mouse = ""

vim.opt.guicursor  = ""
vim.o.clipboard = 'unnamedplus'

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 32
vim.opt.sidescroll = 28
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')
vim.keymap.set('n', '<leader>;', 'q:')

vim.keymap.set("n", "==", "gg<S-v>G")
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


