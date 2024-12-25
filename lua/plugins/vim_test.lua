return {
    "vim-test/vim-test",
    dependencies = {
        'preservim/vimux',
    },
    vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>"),
}
