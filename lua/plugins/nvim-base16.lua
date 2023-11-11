return{
        "RRethy/nvim-base16",
        config = function()
                require('base16-colorscheme').with_config({
                        telescope = true,
                        indentblankline = true,
                        notify = true,
                        ts_rainbow = true,
                        cmp = true,
                        illuminate = true,
                })
                require("base16-colorscheme").setup()
        end,
}
