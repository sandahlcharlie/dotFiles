-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- optional: make Space do nothing in normal mode (so it’s clean)
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

