return
{
    "nvim-lualine/lualine.nvim", 
    depandencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup()
    end, 
    theme = 'auto'
}