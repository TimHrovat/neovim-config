return {
    "EdenEast/nightfox.nvim",
    config = function()
        local C = require("nightfox.lib.color")
        local Shade = require("nightfox.lib.shade")

        local bg = C("#161616")
        local fg = C("#f2f4f8")

        require("nightfox").setup({
            options = {
                dim_inactive = true,
            },
            palettes = {
                carbonfox = {
                    black = Shade.new("#282828", 0.15, -0.15),
                    red = Shade.new("#EE5396", 0.15, -0.15),
                    green = Shade.new("#25be6a", 0.15, -0.15),
                    yellow = Shade.new("#08BDBA", 0.15, -0.15),
                    blue = Shade.new("#78A9FF", 0.15, -0.15),
                    magenta = Shade.new("#BE95FF", 0.15, -0.15),
                    cyan = Shade.new("#33B1FF", 0.15, -0.15),
                    white = Shade.new("#dfdfe0", 0.15, -0.15),
                    orange = Shade.new("#3DDBD9", 0.15, -0.15),
                    pink = Shade.new("#d97706", 0.15, -0.15),

                    comment = bg:blend(fg, 0.4):to_css(),

                    bg0 = bg:brighten(-4):to_css(), -- Dark bg (status line and float)
                    bg1 = bg:to_css(), -- Default bg
                    bg2 = bg:brighten(6):to_css(), -- Lighter bg (colorcolm folds)
                    bg3 = bg:brighten(12):to_css(), -- Lighter bg (cursor line)
                    bg4 = bg:brighten(24):to_css(), -- Conceal, border fg

                    fg0 = fg:brighten(6):to_css(), -- Lighter fg
                    fg1 = fg:to_css(), -- Default fg
                    fg2 = fg:brighten(-24):to_css(), -- Darker fg (status line)
                    fg3 = fg:brighten(-48):to_css(), -- Darker fg (line numbers, fold colums)

                    sel0 = "#3e4a5b",
                    sel1 = "#4f6074",
                },
            },
        })
        vim.cmd("colorscheme carbonfox")
    end,
}
