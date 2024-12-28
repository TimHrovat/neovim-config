return {
    "vim-test/vim-test",
    dependencies = {
        'preservim/vimux',
    },
    vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>"),
    vim.cmd("let test#strategy = 'vimux'"),
    vim.cmd("let test#php#phpunit#executable = 'docker exec -it evrtec.web php artisan test --config=phpunit.xml'")
}
