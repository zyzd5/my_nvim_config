return
{
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",                       -- c/c++
                -- "cmake",                        -- cmake
                -- "dockerls",                     -- docker
                -- "html",                         -- html
                -- "graphql",                      -- graphql
                -- "jsonls",                       -- json
                -- "jdtls",                        -- java
                -- "ltex",                         -- latex
                -- "lua_ls",                       -- lua
                -- "prosemd_lsp",                  -- markdown
                -- "pyright",                      -- python
                -- "rust_analyzer",                -- rust
                -- "tsserver",                     -- java script
                -- "taplo",                        -- toml
                -- "yamlls",                       -- yaml
                -- "lemminx"                       -- xml
            },
            automatic_installation = true,})
    end,
}