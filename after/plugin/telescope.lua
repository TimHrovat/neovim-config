local builtin = require('telescope.builtin')
local telescope = require('telescope')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

telescope.setup({
    file_ignore_patterns = { "node_modules" },
    pickers = {
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
        },
        live_grep = {
            additional_args = function(opts)
                return { "--hidden" }
            end
        }
    },
})
