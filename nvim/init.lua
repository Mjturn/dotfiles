vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 5
vim.opt.softtabstop = 5
vim.opt.shiftwidth = 5
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>m", vim.cmd.Ex)

vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.pack.add({
     "https://github.com/xiantang/darcula-dark.nvim",
     "https://github.com/nvim-telescope/telescope.nvim",
     "https://github.com/nvim-lua/plenary.nvim"
})
