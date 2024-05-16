vim.cmd("set tabstop =4")
vim.cmd("set softtabstop =4")
vim.cmd("set shiftwidth	=4")
vim.cmd("set textwidth =79")
vim.cmd("set expandtab")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set relativenumber")


vim.g.mapleader = ","
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set("n", "<Leader>bn", ":bn<CR>")
vim.keymap.set("n", "<Leader>bb", ":bp<CR>")
vim.keymap.set("n", "<Leader>bd", ":bd<CR>")

