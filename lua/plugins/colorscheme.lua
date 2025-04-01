return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
        -- require("catppuccin").setup({
        --     flavour = "frappe", -- latte, frappe, macchiato, mocha
        -- })

        require("catppuccin").setup({
            flavour = "frappe", -- latte, frappe, macchiato, mocha
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = true, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.2, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = true, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = {},
                loops = {},
                functions = { "bold" },
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = { "italic" },
                operators = {},
            },
            color_overrides = {
                frappe  = {
                    green = "#7EC699", -- strings ...
                    teal = "#bae6fd", -- <.. class../>
                    yellow = "#fbbf24",
                    sky = "#00d5ed", -- <.../>
                    blue = "#FD9A6D", -- orange
                    lavender = "#e0f2fe", -- cyan 100
                    text = "#ffedd5", -- neutral 200
                    overlay2 = "#a3a3a3", -- commas
                    overlay0 = "#71717a", -- comments
                    surface1 = "#606060", -- selection / line numbers
                    surface0 = "#2e313a", -- colorline
                    -- base = "#242730",
                    -- mantle = "#2e313a",
                    -- crust = "#444444",
                },
            },
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}
