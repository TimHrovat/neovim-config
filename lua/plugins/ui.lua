return {
    -- This is what powers LazyVim's fancy-looking
    -- tabs, which include filetype icons and close buttons.
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },

    -- Active indent guide and indent text objects. When you're browsing
    -- code, this highlights the current level of indentation, and animates
    -- the highlighting.
    {
        "echasnovski/mini.indentscope",
        event = "LazyFile",
        opts = {
            symbol = "│",
            options = { try_as_border = true },
            draw = {

                animation = function()
                    return 10
                end,
            },
        },
    },

    -- Displays a popup with possible key bindings of the command you started typing
    {
        "folke/which-key.nvim",
        enabled = false,
    },

    {
        "nvimdev/dashboard-nvim",
        enabled = false,
    },

    {
        "APZelos/blamer.nvim",
        cmd = "BlamerToggle",
    },
}
