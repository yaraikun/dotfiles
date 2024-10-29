vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local yarai_Fugitive = vim.api.nvim_create_augroup("yarai_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
    group = yarai_Fugitive,
    pattern = "*",
    callback = function()

        -- If buffer is not fugitive buffer, don't execute this code block.
        if vim.bo.ft ~= "fugitive" then
            return
        end

        -- Keybinds set.
        vim.keymap.set("n", "<leader>gq", "<cmd>q<cr>")
        vim.keymap.set("n", "<leader>ga", "<cmd>Git add .<cr>")
        vim.keymap.set("n", "<leader>gc", "<cmd>Git commit -a<cr>")
    end,
})
