return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local ui = require 'harpoon.ui'

    harpoon:setup()

    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = 'Harpoon Add file to list' })
    vim.keymap.set('n', '<C-E>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon Toggle menu' })

    vim.keymap.set('n', '<C-A>h', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon select 1' })
    vim.keymap.set('n', '<C-A>j', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon select 2' })
    vim.keymap.set('n', '<C-A>k', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon select 3' })
    vim.keymap.set('n', '<C-A>l', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon select 4' })

    vim.keymap.set('n', '<leader>ah', function()
      harpoon:list():replace_at(1)
    end, { desc = 'Harpoon replace 1' })
    vim.keymap.set('n', '<leader>aj', function()
      harpoon:list():replace_at(2)
    end, { desc = 'Harpoon replace 2' })
    vim.keymap.set('n', '<leader>ak', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Harpoon replace 4' })
    vim.keymap.set('n', '<leader>al', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Harpoon replace 4' })
  end,
}
