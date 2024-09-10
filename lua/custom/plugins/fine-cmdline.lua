vim.keymap.set('n', '<leader>i', '<Esc>:FineCmdline<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-i>', '<Esc>:FloatermPrev<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-o>', '<Esc>:FloatermNext<CR>', { noremap = true, silent = true })

return {
  'VonHeikemen/fine-cmdline.nvim',
  dependencies = {
    {'MunifTanjim/nui.nvim'}
  }
}
