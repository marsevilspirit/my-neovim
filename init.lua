vim.o.clipboard = "unnamedplus"
-- 设置制表符宽度为 4
vim.opt.tabstop = 4
-- 设置每一级缩进的宽度为 4
vim.opt.shiftwidth = 4
-- 将制表符转换为空格
vim.opt.expandtab = true

-- 基础设置
require("basic")

-- 快捷键映射
require("keybindings")

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

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("lazy").setup("plugins")


-- colorscheme风格
vim.cmd('colorscheme base16-snazzy')





