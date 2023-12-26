local ibl = require('ibl')

ibl.setup()

ibl.update {
    indent = {
        char = '▏',
        tab_char = '▏',
        highlight = nil,
        smart_indent_cap = true,
    }
}

vim.opt.guicursor=""
