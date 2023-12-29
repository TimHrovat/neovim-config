local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
        tabline = true,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
    },
    menu = {
        width = vim.api.nvim_win_get_width(0) - 10,
    },
})

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

