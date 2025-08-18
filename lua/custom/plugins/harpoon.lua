return {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")
            local ui = require("harpoon.ui")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = 'Harpoon Add file to list' })
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon Toggle menu' })

            vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = 'Harpoon select 1' })
            vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end, { desc = 'Harpoon select 2' })
            vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end, { desc = 'Harpoon select 3' })
            vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end, { desc = 'Harpoon select 4' })
            -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
            -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
            -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end, { desc = 'Harpoon replace 1' })
            vim.keymap.set("n", "<leader><C-j>", function() harpoon:list():replace_at(2) end, { desc = 'Harpoon replace 2' })
            vim.keymap.set("n", "<leader><C-k>", function() harpoon:list():replace_at(3) end, { desc = 'Harpoon replace 3' })
            vim.keymap.set("n", "<leader><C-l>", function() harpoon:list():replace_at(4) end, { desc = 'Harpoon replace 4' })
            -- vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
            -- vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
            -- vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
        end
}