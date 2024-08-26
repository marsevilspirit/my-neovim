vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数,保存本地变量
local opt = {noremap = true, silent = true }

-- 上下滚动浏览
map("n", "<C-k>", "4k", opt)
map("n", "<C-j>", "4j", opt)

-- 保存
map("n","<leader>ww",":w<CR>",opt)
-- 保存退出
map("n", "<leader>wq", ":wq<CR>", opt)

-- 退出
map("n","<leader>qq",":q<CR>",opt)

map("n", "<leader>bd", ":bd<CR>", opt)

-- jk代替ESC
map("i","jk","<ESC>",opt)
-- nvimTree Alt+m打开nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- 切换标签页
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- 格式化
map("n","<leader>fm","gg=G",opt)

map("n", "q", "b", opt)
