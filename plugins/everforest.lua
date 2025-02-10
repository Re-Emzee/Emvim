return {
  {
    "sainnhe/everforest",
    name = "everforest",
    opts = {
      background = "hard", -- Options: 'hard', 'medium', 'soft'
      transparent = true,   -- Enable/disable transparency
      italic = true,         -- Enable italic text for comments, etc.
      contrast = true,       -- Enable higher contrast
    },
    config = function(_, opts)
      -- Set theme options using vim.g
      vim.g.everforest_background = opts.background
      vim.g.everforest_transparent_background = opts.transparent and 1 or 0
      vim.g.everforest_enable_italic = opts.italic and 1 or 0
      vim.g.everforest_diagnostic_text_highlight = opts.contrast and 1 or 0
      vim.g.everforest_diagnostic_line_highlight = opts.contrast and 1 or 0

      -- Apply the Everforest theme
      -- vim.cmd("colorscheme everforest")
    end,
  },
}
