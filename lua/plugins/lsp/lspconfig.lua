return
{
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {"antosha417/nvim-lsp-file-operations", config = true},
    },
    config = function()
        local lspconfig = require("lspconfig")
        
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        
        local opts = { noremap = true, silent = true }

        local capabilities = cmp_nvim_lsp.default_capabilities()
        
        lspconfig["clangd"].setup({})       --c/c++
        -- lspconfig["taplo"].setup({})        --toml
        -- lspconfig["lua_ls"].setup({})       --lua
        -- lspconfig["jdtls"].setup({})        --java
    
    end,

}
