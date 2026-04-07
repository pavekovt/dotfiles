vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- LSP keymaps (IntelliJ-like)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition (Ctrl+B)" })
vim.keymap.set("n", "<F2>", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<S-F2>", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "<F6>", vim.lsp.buf.rename, { desc = "Rename (Shift+F6)" })
vim.keymap.set("n", "<A-CR>", vim.lsp.buf.code_action, { desc = "Code action (Alt+Enter)" })
vim.keymap.set("n", "<leader>km", "<cmd>Telescope keymaps<cr>", { desc = "Show all keymaps" })

-- Toggle file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })

-- Toggle terminal
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- Window navigation (Ctrl+W + arrow)
vim.keymap.set("n", "<C-w><Up>", "<C-w>k", { desc = "Move to window above" })
vim.keymap.set("n", "<C-w><Down>", "<C-w>j", { desc = "Move to window below" })
vim.keymap.set("n", "<C-w><Left>", "<C-w>h", { desc = "Move to window left" })
vim.keymap.set("n", "<C-w><Right>", "<C-w>l", { desc = "Move to window right" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
