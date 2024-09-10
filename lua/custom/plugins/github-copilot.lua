vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-Enter>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-i>", 'copilot#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-o>", 'copilot#Next()', { silent = true, expr = true })

return {
  "github/copilot.vim"
}
