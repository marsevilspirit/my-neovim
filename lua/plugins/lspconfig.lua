return {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim"},
        config = function()
                require'lspconfig'.lua_ls.setup{}
                require'lspconfig'.clangd.setup{}
        end,
}
