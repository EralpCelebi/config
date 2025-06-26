return {
    'ggml-org/llama.vim',
    init = function()
        vim.g.llama_config = {
            show_info = false,
            keymap_accept_full = "<S-Tab>",
            keymap_accept_line = "<C-Tab>"
        }
    end,
}
