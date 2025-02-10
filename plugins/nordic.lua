-- nordic.lua: Neovim configuration for nordic.nvim
-- https://github.com/AlexvZyl/nordic.nvim

return {
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      -- Load the nordic.nvim plugin
      require("nordic").setup({
        -- General options
        transparent_bg = true, -- Disable transparent background
        bright_border = true, -- Use bright borders
        bold_keywords = true, -- Enable bold keywords
        italic_comments = true, -- Enable italic comments
        theme = "nordic", -- Choose a variant: "nordic", "onedark", or "gruvbox"

        -- Override highlights for specific UI elements
        override = {
          -- Customize tabline
          TabLine = { bg = "#3B4252", fg = "#E5E9F0" },
          TabLineSel = { bg = "#81A1C1", fg = "#2E3440", bold = true },
          TabLineFill = { bg = "#2E3440" },

          -- Customize statusline
          StatusLine = { bg = "#3B4252", fg = "#E5E9F0" },
          StatusLineNC = { bg = "#2E3440", fg = "#4C566A" },

          -- Customize separators (used in heirline.nvim)
          HeirlineSeparator = { fg = "#81A1C1", bg = "#3B4252" },

          -- Floating windows
          NormalFloat = { bg = "#2E3440" },
          FloatBorder = { bg = "#2E3440", fg = "#4C566A" },
        },

        -- Additional customization for UI components
        colors = {
          nordic = {
            bg = "#2E3440",
            fg = "#D8DEE9",
            accent = "#88C0D0",
          },
        },
      })

      -- Apply the colorscheme
      -- vim.cmd("colorscheme nordic")
    end,
  },
}
