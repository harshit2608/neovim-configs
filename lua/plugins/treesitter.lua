return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- Configure nvim-treesitter
    treesitter.setup({
      -- Enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- Enable indentation
      indent = {
        enable = true,
      },
      -- Enable autotagging (with nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- Ensure these language parsers are installed
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "cuda",
        "dart",
        "dockerfile",
        "gitignore",
        "glsl",
        "go",
        "gomod",
        "gosum",
        "graphql",
        "helm",
        "html",
        "java",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "proto",
        "python",
        "query",
        "ruby",
        "rust",
        "scss",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml"
      },
      -- Enable incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
