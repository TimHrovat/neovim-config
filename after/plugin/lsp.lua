local lsp = require("lsp-zero").preset({})

lsp.ensure_installed({
    'lua_ls',
    'rust_analyzer',
    'tsserver',
    'volar',
    'tailwindcss',
    'cssls',
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>k", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>j", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require("lspconfig").rust_analyzer.setup({

})

-- Fix Undefined global 'vim'
require("lspconfig").lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

require'lspconfig'.tsserver.setup{
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/Users/timhrovat/.nvm/versions/node/v20.5.1/lib/node_modules/@vue/typescript-plugin",
        languages = {"javascript", "typescript", "vue"},
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
  },
}

require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

lsp.setup()

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local luasnip = require('luasnip')

cmp.setup({
    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "buffer",  keyword_length = 3 },
        { name = "luasnip", keyword_length = 2 },
    },
    mapping = {
        ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Tab>"] = nil,
        ["<S-Tab>"] = nil,
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
})

local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

luasnip.add_snippets(nil, {
    all = {
        snip({
            trig = "phpdoc",
            namr = "phpdoc",
            dscr = "Generates a phpdoc for a function",
        }, {
            text({
                "/**",
                " * ",
            }),
            insert(1, "DESC"),
            text({
                "",
                " * ",
                " * @param PARAM",
                " * @return RETURN",
                " * ",
                " * @author Tim Hrovat <tim.hrovat@easistent.com>",
                " */",
            }),
            insert(0),
        }),
    },
})

vim.keymap.set({"i", "s"}, "<C-g>", function() luasnip.jump(1) end)
vim.keymap.set({"i", "s"}, "<C-m>", function() luasnip.jump(-1) end)
