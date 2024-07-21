return {
    {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                fish = { "fish_indent" },
                sh = { "shfmt" },
                typescript = { "prettier" },
                vue = { "prettier" },
                javascript = { "prettier" },
                php = { { "pint", "php_cs_fixer" } },
            },
        },
    },
}
