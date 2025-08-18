return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      theme = 'mocha',
      auto_integrations = true,
    })
    vim.cmd.colorscheme 'catppuccin'
  end,
}