return {
    "nvim-treesitter/nvim-treesitter",
    build= ":TSUpdate",
    config = function ()
        -- Treesitter 
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed={"lua", "javascript", "typescript", "html", "css", "json", "tsx", "xml", "html", "dockerfile" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
