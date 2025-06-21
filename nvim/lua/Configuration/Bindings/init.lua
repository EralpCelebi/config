
vim.g.mapleader = "§"
vim.g.maplocalleader = "§"

local set = vim.keymap.set
local cmd = vim.cmd

set('n', '<leader>n', function() vim.cmd("Oil") end, { desc = "Open file tree. (Oil)" })
set('n', '<leader>FF', builtin.find_files, { desc =  "Find files. (Telescope)"})
set('n', '<leader>FG', builtin.live_grep, { desc = "Start live grep. (Telescope)" })
set('n', '<leader>FB', builtin.buffers, { desc = "List buffers. (Telescope)" })
set('n', '<leader>FH', builtin.help_tags, { desc = "Search help tags. (Telescope)" })
set('n', '<leader>gs', builtin.git_status, { desc = "Get git status. (Telescope)" })
set('n', '<leader>gb', builtin.git_branches, { desc = "Get git branches. (Telescope)" })
set('n', '<leader>gc', builtin.git_commits, { desc = "Get git commits. (Telescope)" })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local builtin = require('telescope.builtin')
    set('n', '<leader>de', builtin.lsp_type_definitions, { buffer = args.buf })
    set('n', '<leader>df', builtin.lsp_definitions, { buffer = args.buf })
    set('n', '<leader>D', builtin.diagnostics, { buffer = args.buf })
    set('n', '<leader>i', builtin.lsp_implementations, { buffer = args.buf })
    set('n', '<leader>rf', builtin.lsp_references, { buffer = args.buf })
    set('n', '<leader>s', vim.lsp.buf.signature_help, { buffer = args.buf })
    set('n', '<leader>h', vim.lsp.buf.hover, { buffer = args.buf })
    set('n', '<leader>tf', vim.lsp.buf.type_definition, { buffer = args.buf })
    set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = args.buf })
    set('n', '<leader>a', vim.lsp.buf.code_action, { buffer = args.buf })     
  end
})

