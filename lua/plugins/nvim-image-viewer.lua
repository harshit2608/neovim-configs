local hologram = {
  "edluffy/hologram.nvim",
  config = function()
    require("hologram").setup({
      auto_display = true,
    })
  end,
}

return {
  hologram,
}
