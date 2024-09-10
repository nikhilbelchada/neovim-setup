-- vim.keymap.set('n', '<leader>t', '<Esc>:FineCmdline<CR>', { noremap = true, silent = true })

return {
  'rcarriga/nvim-notify',
  config = function()
    vim.notify = require("notify")
  end,
}
