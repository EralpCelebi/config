return {
    "stevearc/oil.nvim",
    opts = {
        default_file_explorer = true,
        delete_to_trash = true,
        keymaps = {
            ["<CR>"] = "actions.select",
            ["p"] = "actions.preview",
            ["q"] = "actions.close",
            ["r"] = "actions.refresh",
            ["<BS>"] = "actions.parent",
            ["~"] = "actions.open_cwd",
            ["<C-H>"] = "actions.toggle_hidden",
        },
        use_default_keymaps = false,
        view_options = {
            show_hidden = true,
        },
        watch_for_changes = false,
    }
}
