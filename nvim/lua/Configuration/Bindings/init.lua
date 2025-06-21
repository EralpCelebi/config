
vim.g.mapleader = "§"
vim.g.maplocalleader = "§"

local set = vim.keymap.set
local cmd = vim.cmd
local builtin = require('telescope.builtin')


set('n', '<leader>n', function() vim.cmd("Oil") end, { desc = "Open file tree." })
set('n', '<leader>FF', builtin.find_files, { desc = 'Telescope find files' })
set('n', '<leader>FG', builtin.live_grep, { desc = 'Telescope live grep' })
set('n', '<leader>FB', builtin.buffers, { desc = 'Telescope buffers' })
set('n', '<leader>FH', builtin.help_tags, { desc = 'Telescope help tags' })
set('n', '<leader>gs', builtin.git_status, { desc = 'Bring up git status.' })
set('n', '<leader>gb', builtin.git_branches, { desc = 'Bring up git branches.' })
set('n', '<leader>gc', builtin.git_commits, { desc = 'Bring up git commits.' })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
      local bufopts = { noremap=true, silent=true }
      set('n', '<leader>de', builtin.lsp_type_definitions, bufopts)
      set('n', '<leader>df', builtin.lsp_definitions, bufopts)
      set('n', '<leader>D', builtin.diagnostics, bufopts)
      set('n', '<leader>i', builtin.lsp_implementations, bufopts)
      set('n', '<leader>rf', builtin.lsp_references, bufopts)
      set('n', '<leader>s', vim.lsp.buf.signature_help, bufopts)
      set('n', '<leader>h', vim.lsp.buf.hover, bufopts)
      set('n', '<leader>tf', vim.lsp.buf.type_definition, bufopts)
      set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
      set('n', '<leader>a', vim.lsp.buf.code_action, bufopts)
     
  end
})

