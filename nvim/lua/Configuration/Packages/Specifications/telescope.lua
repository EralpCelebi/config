return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim', 
        'nvim-tree/nvim-web-devicons', 
        'nvim-telescope/telescope-ui-select.nvim',
    },
    opts = { 
            extensions = {
                ["ui-select"] = {
                require("telescope.themes").get_dropdown {}
            },
        },
    },
    config = function()
        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("notify")
    end,
}
