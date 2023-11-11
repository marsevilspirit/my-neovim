return {
        cmd = "Telescope",
        keys = {
        {"<leader>ff",":Telescope find_files<CR>",desc = "find files"},
        { "<leader>gf",":Telescope live_grep<CR>",desc = "grep files"},
        { "<leader>rs",":Telescope resume<CR>",desc = "resume"},
        { "<leader>of",":Telescope oldfiles<CR>",desc = "oldfiles"},
        },
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
