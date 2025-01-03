return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            ---@type lspconfig.options.tsserver
            ts_ls = {
                settings = {
                    javascript = {
                        updateImportsOnFileMove = {
                            enabled = "prompt",
                        },
                        preferences = {
                            importModuleSpecifier = "non-relative",
                        },
                    },
                    typescript = {
                        updateImportsOnFileMove = {
                            enabled = "prompt",
                        },
                        preferences = {
                            importModuleSpecifier = "non-relative",
                        },
                    },
                },
                init_options = {
                    preferences = {
                        importModuleSpecifier = "non-relative",
                        includeCompletionsForModuleExports = true,
                        includeCompletionsForImportStatements = true,
                        importModuleSpecifierPreference = "non-relative",
                        importModuleSpecifierEnding = "minimal",
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
