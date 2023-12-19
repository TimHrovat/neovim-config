vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
        width = 24,
    },
    renderer = {
        group_empty = true,
    },
    git = {
        ignore = false,
    },
})

vim.keymap.set("n", "<leader>fs", function() require("nvim-tree").focus() end)
vim.keymap.set("n", "<leader>ts", function() require("nvim-tree").toggle() end)
