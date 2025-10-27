return {
    "mfussenegger/nvim-jdtls",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local config = {
            cmd = { "/opt/homebrew/opt/jdtls/bin/jdtls" },
            root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),

            init_options = {
                settings = {
                    java = {
                        implementationsCodeLens = { enabled = true },
                        imports = { -- <- this
                            gradle = {
                                enabled = true,
                                wrapper = {
                                    enabled = true,
                                    checksums = {
                                        {
                                            sha256 = '76805e32c009c0cf0dd5d206bddc9fb22ea42e84db904b764f3047de095493f3',
                                            allowed = true
                                        }

                                    },
                                }
                            }
                        },
                    },
                }
            }


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
