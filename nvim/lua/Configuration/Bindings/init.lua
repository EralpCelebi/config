vim.g.mapleader = "§"
vim.g.maplocalleader = "§"

local set = vim.keymap.set
local cmd = vim.cmd
    
local mode = require('Configuration.Helpers.mode')

local telescope = require('telescope.builtin')
local format = require('conform').format

set(mode.NORMAL, '<leader>n', function() vim.cmd("Oil") end, { desc = "Open file tree. (Oil)" })
set(mode.NORMAL, '<leader>FF', telescope.find_files, { desc =  "Find files. (telescope.nvim)"})
set(mode.NORMAL, '<leader>FG', telescope.live_grep, { desc = "Start live grep. (telescope.nvim)" })
set(mode.NORMAL, '<leader>FB', telescope.buffers, { desc = "List buffers. (telescope.nvim)" })
set(mode.NORMAL, '<leader>FH', telescope.help_tags, { desc = "Search help tags. (telescope.nvim)" })
set(mode.NORMAL, '<leader>gs', telescope.git_status, { desc = "Get git status. (telescope.nvim)" })
set(mode.NORMAL, '<leader>gb', telescope.git_branches, { desc = "Get git branches. (telescope.nvim)" })
set(mode.NORMAL, '<leader>gc', telescope.git_commits, { desc = "Get git commits. (telescope.nvim)" })

set(mode.NORMAL, '<leader>xx', function() vim.cmd("Trouble diagnostics toggle") end, { desc = "Diagnostics (trouble.nvim)" })
set(mode.NORMAL, '<leader>xb', function() vim.cmd("Trouble diagnostics toggle filter.buf=0") end, { desc = "Buffer diagnostics (trouble.nvim)" })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    set(mode.NORMAL, '<leader>de', telescope.lsp_type_definitions, { buffer = args.buf })
    set(mode.NORMAL, '<leader>df', telescope.lsp_definitions, { buffer = args.buf })
    set(mode.NORMAL, '<leader>D', telescope.diagnostics, { buffer = args.buf })
    set(mode.NORMAL, '<leader>i', telescope.lsp_implementations, { buffer = args.buf })
    set(mode.NORMAL, '<leader>rf', telescope.lsp_references, { buffer = args.buf })
    set(mode.NORMAL, '<leader>s', vim.lsp.buf.signature_help, { buffer = args.buf })
    set(mode.NORMAL, '<leader>h', vim.lsp.buf.hover, { buffer = args.buf })
    set(mode.NORMAL, '<leader>tf', vim.lsp.buf.type_definition, { buffer = args.buf })
    set(mode.NORMAL, '<leader>rn', vim.lsp.buf.rename, { buffer = args.buf })
    set(mode.NORMAL, '<leader>a', vim.lsp.buf.code_action, { buffer = args.buf })
  end
})

