vim.keymap.set('n', '<leader>gg', '<Esc>:Git<CR>', { desc = 'Git panel', noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', '<Esc>:Git log<CR>', { desc = 'Git log', noremap = true, silent = true })
vim.keymap.set('n', '<leader>gc', '<Esc>:Git ci<CR>', { desc = 'Git ci', noremap = true, silent = true })
vim.keymap.set('n', '<leader>gp', '<Esc>:Git log -p<CR>', { desc = 'Git log -p', noremap = true, silent = true })
vim.keymap.set('n', '<leader>ga', '<Esc>:Git commit --amend<CR>', { desc = 'Git commit --amend', noremap = true, silent = true })
vim.keymap.set('n', '<leader>gs', '<Esc>:Git stash<CR>', { desc = 'Git stash', noremap = true, silent = true })
vim.keymap.set('n', '<leader>gm', '<cmd>FineCmdline Git mob <CR>', { desc = 'Git mob', noremap = true, silent = true })

return {
  "kdheepak/lazygit.nvim",
  config = function ()
  require("lazy").setup({
    {
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
  })
  end,
}
