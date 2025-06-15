-- plugins.lua / lazy.nvim
return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      presets = {
        command_palette = false,
        bottom_search = true,
        long_message_to_split = true,
      },
      cmdline = {
          view = "cmdline_popup", --or cmdline_popup
      }
    })
    vim.notify = require("notify")
  end
}
