return {
    {
        "nvim-pack/nvim-spectre",
        build = false,
        cmd = "Spectre",
        opts = { open_cmd = "noswapfile vnew" },
        -- stylua: ignore
        keys = {
            { "<leader>R", function() require("spectre").open() end, desc = "Replace in Files (Spectre)" },
        },
    },
    {
        "tpope/vim-abolish",
    },
}
