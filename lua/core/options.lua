local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4             -- 显示缩进符时的缩进数
opt.shiftwidth = 4          -- 按下tab插入的缩进数 
opt.expandtab = true        -- 使用空格代替制表符进行缩进
opt.autoindent = true       -- 自动缩进

--防止包裹
opt.wrap = false

-- 光标
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 主题
