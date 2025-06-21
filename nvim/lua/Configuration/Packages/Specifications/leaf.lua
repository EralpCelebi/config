return {
    "daschw/leaf.nvim",
    opts = {
        underlineStyle = "underline",
        commentStyle = "NONE",
        functionStyle = "NONE",
        keywordStyle = "bold",
        statementStyle = "NONE",
        typeStyle = "NONE",
        variablebuiltinStyle = "NONE",
        transparent = true,
        colors = {
            purple0 = "#BD7663",
            purple1 = "#9E6253",
        },
        overrides = {},
        theme = "auto", -- default, based on vim.o.background, alternatives: "light", "dark"
        contrast = "high", -- default, alternatives: "medium", "high"
    },
}
