return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

-- return {
--     'echasnovski/mini.nvim',
--
--     config = function()
--         require('mini.pick').setup({})
--
--         local builtin = require('mini.pick').builtin
--
--         vim.keymap.set('n', '<leader>pf', function() builtin.files() end, { desc = 'Find files' })
--         vim.keymap.set('n', '<C-p>', function() builtin.files({ tool = 'git' }) end, { desc = 'Find git files' })
--
--         vim.keymap.set('n', '<leader>pws', function()
--             local word = vim.fn.expand("<cword>")
--             builtin.grep({ search = word })
--         end, { desc = 'Grep for word under cursor' })
--
--         vim.keymap.set('n', '<leader>pWs', function()
--             local word = vim.fn.expand("<cWORD>")
--             builtin.grep({ search = word })
--         end, { desc = 'Grep for WORD under cursor' })
--
--         vim.keymap.set('n', '<leader>ps', function()
--             builtin.grep({ search = vim.fn.input("Grep > ") })
--         end, { desc = 'Grep for input' })
--
--         vim.keymap.set('n', '<leader>vh', function() builtin.help() end, { desc = 'Search help tags' })
--     end
-- }
