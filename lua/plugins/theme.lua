return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_bg = true,
      term_colors = true, -- This ensures terminal colors are consistent with the theme
      integrations = {
        nvimtree = {
          transparent_panel = true, -- If using nvim-tree and want it transparent too
        },
      },
    },
    config = function()
      -- Apply the colorscheme
      vim.cmd.colorscheme("catppuccin-macchiato")

      -- Additional settings to ensure transparency in all UI elements
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    end,
  },
}
