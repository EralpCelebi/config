return {
    "stevearc/conform.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    event = { "BufWritePre" },
    keys = {
        {
          "<leader>f",
          function()
            require("conform").format({ async = true })
          end,
          mode = "",
          desc = "Format buffer. (conform.nvim)"
        },
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
