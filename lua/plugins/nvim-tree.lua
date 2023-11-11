return{
        "nvim-tree/nvim-tree.lua",
        config = function()
                require("nvim-tree").setup({
        -- 文件排序区别大小写
        sort_by = "case_sensitive",
        view = {
        width = 20,
        },
        renderer = {
        group_empty = true,
        },
        filters = {
        dotfiles = true,
        },
        })
        end,
}
