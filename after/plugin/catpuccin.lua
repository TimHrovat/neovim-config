require("catppuccin").setup({
    flavour = "mocha",              -- latte, frappe, macchiato, mocha
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
    term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true,             -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.2,          -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,              -- Force no italic
    no_bold = false,                -- Force no bold
    no_underline = true,           -- Force no underline
    styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },    -- Change the style of comments
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
        mocha = {
            rosewater = "#ffc0b9",
            flamingo = "#ca8a04",
            pink = "#f592d6",
            mauve = "#c0afff",
            red = "#ea746c",
            maroon = "#f0abfc",
            peach = "#fa9a6d",
            yellow = "#F8C555",
            green = "#7EC699", -- strings ...
            teal = "#bae6fd", -- <.. class../> 
            sky = "#00d5ed", -- <.../>
            sapphire = "#00dfce",
            blue = "#fb923c", -- orange
            lavender = "#e0f2fe", -- cyan 100
            text = "#ffedd5", -- neutral 200
            subtext1 = "#38bdf8", -- ??
            subtext0 = "#ea580c", -- ??
            overlay2 = "#a3a3a3", -- commas
            overlay1 = "#00ff00", -- ??? 
            overlay0 = "#71717a", -- comments 
            surface2 = "#00ff00", -- ???
            surface1 = "#606060", -- selection / line numbers
            surface0 = "#2e313a", -- colorline
            base = "#242730",
            mantle = "#2e313a",
            crust = "#444444",
        }
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
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
