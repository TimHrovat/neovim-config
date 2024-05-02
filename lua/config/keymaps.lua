-- Keymaps are automatically loaded on the VeryLazy event
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-l>", "20zl", { silent = true })
vim.keymap.set("n", "<C-h>", "20zh", { silent = true })

-- handle system clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>wq", "<C-w><S-w>")
vim.keymap.set("n", "<leader>we", "<C-w><C-w>")
vim.keymap.set("n", "<leader>ww", "<C-w><C-v><C-w><C-w>")

-- opt + J -> Ô
-- opt + K -> 
vim.keymap.set("n", "Ô", "<CMD>LineDuplicate +1<CR>")
vim.keymap.set("n", "", "<CMD>LineDuplicate -1<CR>")

vim.keymap.set("v", "Ô", "<CMD>VisualDuplicate +1<CR>")
vim.keymap.set("v", "", "<CMD>VisualDuplicate -1<CR>")
