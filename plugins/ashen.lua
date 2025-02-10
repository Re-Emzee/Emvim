return {
  {
    "ficcdaf/ashen.nvim",
    name = "ashen",
    opts = {
      transparent = false, -- Enable/disable transparency
      italic_comments = true, -- Enable italic comments
      bold_keywords = true, -- Enable bold keywords
      contrast = "medium", -- Options: 'low', 'medium', 'high'
      hl = {
        -- Force override specific highlight groups
        force_override = {
          -- Customize tabline
          TabLine = { "g_3", "g_8" }, -- Inactive tabs (foreground, background)
          TabLineSel = { "g_2", "g_8", { bold = true } }, -- Active tab (foreground, background, style)
          TabLineFill = { nil, "g_8" }, -- Background of the tabline (background only)
        },
        -- Merge override for other highlight groups (optional)
        merge_override = {
          StatusLine = { "g_5", "g_8" }, -- Customize statusline
        },
        -- Link highlight groups (optional)
        link = {
          HeirlineSeparator = "TabLineSel", -- Link separators to active tab color
        },
      },
    },
    config = function(_, opts)
      require("ashen").setup(opts)
      --vim.cmd("colorscheme ashen")
    end,
  },
}
