return {
    {
        'chomosuke/typst-preview.nvim',
        ft = 'typst', -- Only load for Typst files
        version = '1.*',
        opts = {},
        keys = {
            { "<leader>tt", "<cmd>TypstPreviewToggle<cr>",    desc = "Typst Preview Toggle" },
            { "<leader>tf", "<cmd>TypstPreviewFollowCursorToggle<cr>", desc = "Toggle Follow Cursor" },
            { "<leader>tu", "<cmd>TypstPreviewUpdate<cr>",     desc = "Update Typst Preview Binaries" },
        },
    }
}
