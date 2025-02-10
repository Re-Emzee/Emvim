return {
    {
      "nordtheme/vim",
      name = "nord",
      opts = {
        -- Customize theme options here
        background = "dark",      -- Options: 'dark' or 'light'
        contrast = true,          -- Enable higher contrast for the theme
        italic = true,            -- Enable italic text for comments, strings, etc.
        nord_borders = true,      -- Enable borders for windows and splits
      },
      config = function(_, opts)
        -- Set theme options using vim.g
        vim.g.nord_contrast = opts.contrast
        vim.g.nord_italic = opts.italic
        vim.g.nord_borders = opts.nord_borders
        vim.g.nord_background = opts.background
  
        -- Apply the Nord theme
        -- vim.cmd('colorscheme nord')
      end
    }
  }
