return {
  {
    "slugbyte/lackluster.nvim",
    name = "lackluster",
    opts = {
      transparent = false,   -- Enable/disable transparency
      bold_keywords = true,  -- Enable bold keywords
      italic_comments = true, -- Enable italic comments
    },
    config = function(_, opts)
      -- Set theme options using vim.g or directly in the setup function
      require("lackluster").setup({
        transparent_bg = opts.transparent,
        bold_keywords = opts.bold_keywords,
        italic_comments = opts.italic_comments,
      })

      -- Apply the Lackluster theme
      -- vim.cmd("colorscheme lackluster")
    end,
  },
}
