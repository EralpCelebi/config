vim.cmd("colorscheme retrobox")
vim.cmd("TSEnable highlight indent incremental_selection")

local set = vim.api.nvim_set_hl

-- General

set(0, "TelescopeBorder", { fg = "#54897C" })
set(0, "EndOfBuffer", { fg = "#6F6D6E" })
set(0, "WinSeparator", { bg = "NONE" })

--
-- Tree-Sitter
--

set(0, "@keyword.type", { link = "Keyword" })
set(0, "@variable.builtin", { fg = "#CD6169" })

