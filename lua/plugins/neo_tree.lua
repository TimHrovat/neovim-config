return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = "Neotree",
        keys = {
            {
                "<leader>ts",
                function()
                    require("neo-tree.command").execute({
                        toggle = true,
                        action = "focus",
                        dir = vim.uv.cwd(),
                    })
                end,
            },
            {
                "<leader>pv",
                function()
                    require("neo-tree.command").execute({
                        toggle = false,
                        action = "focus",
                        dir = vim.uv.cwd(),
                        reveal = true,
                    })
                end,
            },
        },
        config = function()
            require("neo-tree").setup({
                window = {
                    position = "current",
                    mappings = {
                        ["o"] = "system_open",
                    },
                },
                filesystem = {
                    filtered_items = {
                        visible = true, -- when true, they will just be displayed differently than normal items
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_hidden = false, -- only works on Windows for hidden files/directories
                        never_show = {
                            ".DS_Store",
                        },
                    },
                    follow_current_file = {
                        enabled = false, -- This will find and focus the file in the active buffer every time
                        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                    },
                },
                commands = {
                    system_open = function(state)
                        local node = state.tree:get_node()
                        local path = node:get_id()
                        -- macOs: open file in default application in the background.
                        vim.fn.jobstart(
                            { "open", path },
                            { detach = true }
                        )
                    end,
                },
            })
        end,
    },
}
