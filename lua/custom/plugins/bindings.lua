-- ****** Custom bindings ********

vim.keymap.set('n', '<C-i>', '<Esc>:tabprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-o>', '<Esc>:tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-n>', '<Esc>:tabnew<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })


vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<C-f>', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<C-a>', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

vim.keymap.set('n', '<leader>fr', '<cmd>Telescope related_files<cr>', { desc = '[F]ind related [F]iles' })
vim.keymap.set('n', '<leader>yf', ':let @+ = expand("%")<CR>', { desc = '[Yank] current [F]ilename', noremap = true})

return {}
