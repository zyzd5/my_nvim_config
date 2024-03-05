return
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
    local configs = require("nvim-treesitter.configs")
    configs.setup(
        {
            ensure_installed = { "bash", "c", "cpp", "cmake", "csv", "doxygen", "gitignore", "lua", "make", "markdown", "rust", "yaml", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "json", "html", "lua", "python"  },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}