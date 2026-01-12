vim.o.undofile = true
vim.opt.nu = true
vim.o.relativenumber = true
vim.o.wrap = false

vim.cmd.colorscheme("retrobox")
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.mouse = ""

vim.o.guicursor  = ""
vim.o.clipboard = 'unnamedplus'

vim.o.signcolumn = "yes"

vim.o.updatetime = 50
vim.o.colorcolumn = "80"

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true
vim.o.termguicolors = true

vim.o.scrolloff = 32
vim.o.sidescroll = 28
vim.o.signcolumn = "yes"
vim.o.updatetime = 50

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')
vim.keymap.set('n', '<leader>;', 'q:')

vim.keymap.set("n", "==", "gg<S-v>G")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- vim.pack.add({
--     {src = "https://github.com/stevearc/oil.nvim"},
--     {src = "https://github.com/neovim/nvim-lspconfig"},
-- })
