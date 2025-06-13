return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        --"none-ls.diagnostics.eslint"
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.completion.spell,
                -- Eslint is removed from none-ls since there is an lsp 
                --require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
