local enable = vim.lsp.enable
local config = vim.lsp.config

--
-- Configuration
--

config.rust_analyzer = {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = { command = "clippy" },
			check = {
				command = "clippy",
				extra_args = { "-W clippy::all -W clippy::pedantic -W clippy::nursery -W clippy::cargo" },
			},
			cargo = {
				allFeatures = true,
				buildScripts = false,
			},
			completion = {
				postfix = { enable = true },
				fullFunctionSignatures = { enable = true },
			},
			diagnostics = { enable = true },
			rustfmt = { enable = true },
			semanticHighlighting = {},
		},
	},
}

config.clangd = {
	cmd = {
		"clangd",
		"--clang-tidy",
		"--background-index",
	},
	filetypes = { "c", "cpp" },
	init_options = {
		fallbackFlags = { "--std=c++23" },
	},
}

--
-- Enable
--

enable("rust_analyzer")
enable("gopls")
enable("clangd")
enable("tinymist")
enable("lua_ls")
