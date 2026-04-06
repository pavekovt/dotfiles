vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

require("pavekovt.remap")
require("pavekovt.lazy")

vim.lsp.enable("vtsls")
vim.lsp.enable("pyright")
