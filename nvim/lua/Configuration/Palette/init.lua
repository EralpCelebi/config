vim.cmd("colorscheme retrobox")

local set = vim.api.nvim_set_hl

-- General

set(0, "TelescopeBorder", { fg = "#54897C" })
set(0, "EndOfBuffer", { fg = "#6F6D6E" })
set(0, "WinSeparator", { bg = "NONE" })

--
-- Tree-Sitter
--
set(0, "Keyword", { fg = "#FF5D62" })
set(0, "@keyword", { link = "Keyword" })
set(0, "@keyword.type", { link = "Keyword" })
set(0, "@keyword.import", { link = "Keyword" })


set(0, "Function", { fg = "#DCA561" })
set(0, "@function", { link = "Function" })
set(0, "@function.call", { link = "Function" })

set(0, "@variable", { fg = "#76946A"})
set(0, "@variable.builtin", { fg = "#CD6169" })

set(0, "Identifier", { fg = "#7AA89F" })
set(0, "module", { link = "Identifier" })
set(0, "@module", { link = "Identifier" })

--
-- Blink
--
-- set(0, "BlinkCmpMenu", { bg = "#303030" })
set(0, "BlinkCmpDoc", { link = "BlinkCmpMenu"})

--
-- LLaMA
--
set(0, "llama_hl_hint", { fg = "#505050" })

--
-- Gutter Icons
--

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '♠',
            [vim.diagnostic.severity.WARN] = '♣',
            [vim.diagnostic.severity.HINT] = '♣',
            [vim.diagnostic.severity.INFO] = '♦',
        },
    },
})
