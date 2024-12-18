return {
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
}
