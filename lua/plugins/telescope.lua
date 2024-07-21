return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    -- enabled = function()
    --     return LazyVim.pick.want() == "telescope"
    -- end,
    keys = {
        {
            "<leader>pb",
            "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
            desc = "Switch Buffer",
        },
        {
            "<leader>ps",
            LazyVim.pick("live_grep"),
            desc = "Grep (Root Dir)",
        },
        {
            "<leader>:",
            "<cmd>Telescope command_history<cr>",
            desc = "Command History",
        },
        {
            "<leader>pf",
            LazyVim.pick("files"),
            desc = "Find Files (Root Dir)",
        },
    },
}
