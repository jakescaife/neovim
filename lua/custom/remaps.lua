-- Keep cursor in position
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Lsp Configuration
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "gra", vim.lsp.buf.code_action)
vim.keymap.set("n", "grr", vim.lsp.buf.references)
vim.keymap.set("n", "gri", vim.lsp.buf.implementation)
vim.keymap.set("n", "grd", vim.lsp.buf.definition)
vim.keymap.set("n", "grh", vim.lsp.buf.declaration)
vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol)
vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help)

-- Quickfix list
vim.keymap.set("n", "]q", "<cmd>cnext<CR>")
vim.keymap.set("n", "[q", "<cmd>cprev<CR>")

-- Terminal remaps
vim.keymap.set("t", "<C-d>", "<C-\\><C-n>")
