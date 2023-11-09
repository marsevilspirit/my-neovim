vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数,保存本地变量
local opt = {noremap = true, silent = true }

-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- 保存退出
map("n", "wq", ":wq<CR>", opt)

-- jk代替ESC
map("i","jk","<ESC>",opt)

-- <space>代替：进入命令模式
map("n","<leader>",":",opt)

-- 
