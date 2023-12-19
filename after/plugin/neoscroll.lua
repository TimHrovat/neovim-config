require('neoscroll').setup()

local t = {}

t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '50', nil}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '50', nil}}

require('neoscroll.config').set_mappings(t)
