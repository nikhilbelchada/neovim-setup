vim.keymap.set('n', '<leader>tt', '<Esc>:FloatermToggle<CR>', { noremap = true, silent = true, desc = 'Floaterm Toggle' })
vim.keymap.set('n', '<leader>ts', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:/bin/dev/shipit>>>>>>>>>>>> shipit<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: bin/dev/shipit' })
vim.keymap.set('n', '<leader>ta', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:bin/dev/audit>>>>>>>>>>>> audit<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: bin/dev/audit' })
vim.keymap.set('n', '<leader>tf', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:bin/dev/format>>>>>>>>>>>> format --all<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: bin/dev/format' })
vim.keymap.set('n', '<leader>tm', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:mix_testTEST>>>>>>>>>>>> mix test<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: mix test' })
vim.keymap.set('n', '<leader>tu', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:bin/dev/update>>>>>>>>>>>> update<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: bin/dev/update' })
vim.keymap.set('n', '<leader>tp', '<Esc>:FloatermNew --titleposition=center --title=<<<<<<<<<<<<<Running:ProjectSetup>>>>>>>>>>>> sh tmp/start-up.sh<CR>', { noremap = true, silent = true, desc = 'Floaterm Run: sh tmp/start-up.sh' })
-- vim.keymap.set('n', '<C-i>', '<Esc>:FloatermPrev<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-o>', '<Esc>:FloatermNext<CR>', { noremap = true, silent = true })

return {
  'voldikss/vim-floaterm'
}
