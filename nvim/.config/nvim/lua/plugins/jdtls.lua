return {
    "mfussenegger/nvim-jdtls",
    config = function()
        local config = {
            cmd = { "/opt/homebrew/opt/jdtls/bin/jdtls" },
            root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
        }

        vim.api.nvim_create_user_command(
            "JdtStart",
            function()
                require("jdtls").start_or_attach(config)
            end,
            {}
        )
    end,
}
