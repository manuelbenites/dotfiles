-- Open nvim config
vim.api.nvim_set_keymap("n", "<Space>e", ":e<Enter>", {noremap = true})

-- Save changes - Exit tab
vim.api.nvim_set_keymap("n", "<Space>w", ":w<Enter>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Space>q", ":quit<Enter>", {noremap = true})

-- Up - Down line
vim.api.nvim_set_keymap("n", "<A-j>", ":m+1<Enter>", {noremap = true})
vim.api.nvim_set_keymap("n", "<A-k>", ":m-2<Enter>", {noremap = true})

-- Bufferline keymaps
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<Enter>",
                        {noremap = true})
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<Enter>",
                        {noremap = true})

vim.api.nvim_set_keymap("n", "<Space>,", ":BufferLinePickClose<Enter>",
                        {noremap = true})
