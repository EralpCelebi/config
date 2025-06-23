local enable = vim.lsp.enable
local config = vim.lsp.config

enable("rust_analyzer")
enable("gopls")
enable("clangd")

config.clangd = {
    cmd = {
        "clangd",
        "--clang-tidy",
        "--background-index"
    },
    init_options = {
        fallbackFlags = {'--std=c++20'}
    },
}
