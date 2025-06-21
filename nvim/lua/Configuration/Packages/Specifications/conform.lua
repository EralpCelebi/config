return {
    "stevearc/conform.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        formatters_by_ft = {
            javascript = {
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            python = { "ruff" },
            typescript = {
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
        },
        format_on_save = {
            lsp_format = "fallback",
            timeout_ms = 500,
        },
    },
}
