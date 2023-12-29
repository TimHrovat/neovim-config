require("onedarkpro").setup({
    options = {
        highlight_inactive_windows = true
    },
    plugins = {
        treesitter = true,
        leap = true,
        indentline = true,
        nvim_cmp = true,
        nvim_lsp = true,
        nvim_tree = true,
        telescope = true,
    },
    colors = {
        dark = {
            color_column = "#0a0a0a",
            float_bg = "#171717",
        }
    }
})

vim.cmd('colorscheme onedark_dark')
