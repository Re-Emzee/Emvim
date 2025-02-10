-- kanagawa.lua: Neovim configuration for kanagawa.nvim
-- https://github.com/rebelot/kanagawa.nvim

return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      -- Load the kanagawa.nvim plugin
      require("kanagawa").setup({
        compile = true, -- Enable compilation for improved performance
        transparent = true, -- Disable transparent background
        dimInactive = false, -- Disable dimming of inactive windows
        terminalColors = true, -- Enable terminal colors
        colors = {
          palette = {}, -- Override the default palette if needed
          theme = {
            all = {
              ui = {
                bg_gutter = "none", -- Remove background from gutters
              },
            },
          },
        },
        overrides = function(colors)
          -- Customize specific highlight groups
          return {
            -- Customize tabline
            TabLine = { bg = colors.palette.sumiInk1, fg = colors.palette.fujiWhite },
            TabLineSel = { bg = colors.palette.waveBlue1, fg = colors.palette.fujiWhite, bold = true },
            TabLineFill = { bg = colors.palette.sumiInk0 },

            -- Customize statusline
            StatusLine = { bg = colors.palette.sumiInk1, fg = colors.palette.fujiWhite },
            StatusLineNC = { bg = colors.palette.sumiInk0, fg = colors.palette.fujiGray },

            -- Customize separators (used in heirline.nvim)
            HeirlineSeparator = { fg = colors.palette.waveBlue1, bg = colors.palette.sumiInk1 },

            -- Customize floating windows
            NormalFloat = { bg = colors.palette.sumiInk0 },
            FloatBorder = { bg = colors.palette.sumiInk0, fg = colors.palette.fujiGray },
          }
        end,
        theme = "dragon", -- Choose a theme variant: "wave", "dragon", or "lotus"
        background = {
          dark = "dragon", -- Dark theme variant
          light = "lotus", -- Light theme variant
        },
      })

      -- Apply the colorscheme
      --vim.cmd("colorscheme kanagawa")
      --vim.g.kanagawa_transparent_background = 0;
    end,
  },
}
