return function()
    vim.cmd("split")
    winh = vim.api.nvim_get_current_win()
    bufh = vim.api.nvim_create_buf(true, true)
    vim.api.nvim_win_set_buf(winh, bufh)
    vim.api.nvim_set_current_win(winh)
    vim.cmd("terminal")
end
