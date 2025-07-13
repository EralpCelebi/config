local enable = vim.lsp.enable
local config = vim.lsp.config

--
-- Enable
--

enable("rust_analyzer")
enable("gopls")
enable("clangd")
enable("tinymist")
--
-- Configuration
--

config.clangd = {
    cmd = {
        "clangd",
        "--clang-tidy",
        "--background-index"
    },
    filetypes = { "c", "cpp" },
    init_options = {
        fallbackFlags = {'--std=c++20'}
    },
}
