-- opt + J -> Ô
-- opt + K -> 
vim.keymap.set("n", "Ô", "<CMD>LineDuplicate +1<CR>")
vim.keymap.set("n", "", "<CMD>LineDuplicate -1<CR>")

vim.keymap.set("v", "Ô", "<CMD>VisualDuplicate +1<CR>")
vim.keymap.set("v", "", "<CMD>VisualDuplicate -1<CR>")
