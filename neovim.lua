return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#000306", -- Default background
                base01 = "#1e4157", -- Lighter background (status bars)
                base02 = "#000306", -- Selection background
                base03 = "#1e4157", -- Comments, invisibles
                base04 = "#d4e3f0", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#d4e3f0", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#6b9ed4", -- Variables, errors, red
                base09 = "#b2cfed", -- Integers, constants, orange
                base0A = "#50c4ef", -- Classes, types, yellow
                base0B = "#b3e3f3", -- Strings, green
                base0C = "#7ac9ec", -- Support, regex, cyan
                base0D = "#93b8de", -- Functions, keywords, blue
                base0E = "#99b7d2", -- Keywords, storage, magenta
                base0F = "#a5e3fb", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
