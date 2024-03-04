-- not finished

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "<CapsLock>", "<ESC>")
-- "i" 表示插入模式, "jk" 表示快速按下 "jk", "<ESC> 表示模拟退出插入模式"

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set('n', '<C-Tab>', ":bnext<CR>")
