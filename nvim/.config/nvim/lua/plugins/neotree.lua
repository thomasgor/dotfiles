return {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim", 
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            -- fill any relevant options here
        },
        config = function()
            local neoTree = require("neo-tree");
            neoTree.setup({
                filesystem = {
                    filtered_items = {
                        visible = true, -- <--- zeigt versteckte Dateien!
                        show_hidden_count = true,
                        hide_dotfiles = false, -- <--- dotfiles NICHT verstecken
                        hide_gitignored = false, -- <--- gitignored NICHT verstecken
                    },
                },
            })

            -- Shortcuts for Neotree
            vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
            vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
        end
}
