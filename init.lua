require("core.options")
require("core.keymaps")

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    { import = "plugins" },
    { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
    {"nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function () 
        local configs = require("nvim-treesitter.configs")
  
        configs.setup({
            ensure_installed = { "bash", "c", "cpp", "cmake", "csv", "doxygen", "gitignore", "lua", "make", "markdown", "rust", "yaml", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "json", "html", "lua", "python"  },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
          })
      end
   }
  
  })
-- lazy.nvim end

-- nightfly
vim.cmd [[colorscheme nightfly]]
