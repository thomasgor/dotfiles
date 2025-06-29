return {
    "nvim-treesitter/nvim-treesitter",
    build= ":TSUpdate",
    dependencies = {
        'windwp/nvim-ts-autotag',
    },

    config = function ()
        -- Treesitter 
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed={"lua", "javascript", "typescript", "css", "json", "tsx", "xml", "html", "dockerfile" },
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true }
        })
    end
}
