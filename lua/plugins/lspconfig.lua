return {
    "neovim/nvim-lspconfig",
    opts = {
        -- make sure mason installs the server
        servers = {
            ---@type lspconfig.options.tsserver
            tsserver = {
                settings = {
                    javascript = {
                        updateImportsOnFileMove = {
                            enabled = "prompt",
                        },
                    },
                    typescript = {
                        updateImportsOnFileMove = {
                            enabled = "prompt",
                        },
                    },
                },
                init_options = {
                    preferences = {
                        importModuleSpecifier = "relative",
                        includeCompletionsForModuleExports = true,
                        includeCompletionsForImportStatements = true,
                        importModuleSpecifierPreference = "relative",
                    },
                    plugins = {
                        {
                            name = "@vue/typescript-plugin",
                            location = "/Users/timhrovat/.nvm/versions/node/v20.5.1/lib/node_modules/@vue/typescript-plugin",
                            languages = { "javascript", "typescript", "vue" },
                        },
                    },
                },
                filetypes = {
                    "javascript",
                    "typescript",
                    "vue",
                },
            },
        },
    },
}
