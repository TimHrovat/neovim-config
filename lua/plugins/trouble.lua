return {
    "folke/trouble.nvim",
    cmd = {  "Trouble" },
    opts = { use_diagnostic_signs = true },
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Document Diagnostics (Trouble)",
        },
    },
}
