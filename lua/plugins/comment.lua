return{
    "numToStr/Comment.nvim",
    config = function ()
        require("lualine").setup{
            -- Add a space b/w comment and the line
            padding = true,
            -- 是否在注释符号和注释内容之间添加空格。例如，如果设置为 `true`，则注释格式会是 `-- 注释内容`，而不是 `--注释内容`。

            -- Whether the cursor should stay at its position
            sticky = true,
            -- 当进行注释或取消注释时，光标是否保持在当前位置。如果设置为 `true`，光标位置不会改变。

            -- Lines to be ignored while (un)comment
            ignore = nil,
            -- 指定哪些行在注释或取消注释时应被忽略。这里设置为 `nil`，表示不忽略任何行。

            -- LHS of toggle mappings in NORMAL mode
            toggler = {
                -- Line-comment toggle keymap
                line = 'gcc',
                -- 设置在正常模式（NORMAL mode）下切换行注释的快捷键，这里设置为 `gcc`。

                -- Block-comment toggle keymap
                block = 'gbc',
                -- 设置在正常模式下切换块注释的快捷键，这里设置为 `gbc`。
            },

            -- LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                -- Line-comment keymap
                line = 'gc',
                -- 设置在正常模式和可视模式（VISUAL mode）下用于操作待定的行注释快捷键，这里设置为 `gc`。

                -- Block-comment keymap
                block = 'gb',
                -- 设置在正常模式和可视模式下用于操作待定的块注释快捷键，这里设置为 `gb`。
            },

            -- LHS of extra mappings
            extra = {
                -- Add comment on the line above
                above = 'gcO',
                -- 设置在当前行上方添加注释的快捷键，这里设置为 `gcO`。

                -- Add comment on the line below
                below = 'gco',
                -- 设置在当前行下方添加注释的快捷键，这里设置为 `gco`。

                -- Add comment at the end of line
                eol = 'gcA',
                -- 设置在当前行末尾添加注释的快捷键，这里设置为 `gcA`。
            },

            -- Enable keybindings
            -- NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                -- 是否启用基础的快捷键映射，如 `gcc`、`gbc` 和 `gc[count]{motion}` 等。这些是最常用的注释和取消注释的快捷键。

                -- Extra mapping; `gco`, `gcO`, `gcA`
                extra = true,
                -- 是否启用额外的快捷键映射，如 `gco`、`gcO`、`gcA` 等，这些是用于在当前行的上方或下方添加注释的快捷键。
            },

            -- Function to call before (un)comment
            pre_hook = nil,
            -- 在注释或取消注释之前调用的函数。这里设置为 `nil`，表示不调用任何函数。

            -- Function to call after (un)comment
            post_hook = nil,
            -- 在注释或取消注释之后调用的函数。这里设置为 `nil`，表示不调用任何函数。
        }
    end,
}
