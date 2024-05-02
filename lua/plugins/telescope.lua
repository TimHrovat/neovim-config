return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    keys = {
        {
            "<leader>pb",
            "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
            desc = "Switch Buffer",
        },
        {
            "<leader>ps",
            LazyVim.telescope("live_grep"),
            desc = "Grep (Root Dir)",
        },
        {
            "<leader>:",
            "<cmd>Telescope command_history<cr>",
            desc = "Command History",
        },
        {
            "<leader>pf",
            LazyVim.telescope("files"),
            desc = "Find Files (Root Dir)",
        },
    },
}
