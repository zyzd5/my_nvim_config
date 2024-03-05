vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "<CapsLock>", "<ESC>")
-- "i" 表示插入模式, "jk" 表示快速按下 "jk", "<ESC> 表示模拟退出插入模式"

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")         -- 主键 + sv: 垂直分割窗口
keymap.set("n", "<C-Down>", "<C-e>")            -- Ctrl + down 向下滚动视图
keymap.set("n", "<C-UP>", "<C-y>")              -- Ctrl + up 向下滚动视图

-- editor

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<C-Tab>", ":bnext<CR>")

-- telescope.nvim
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {})
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {})
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", {})

