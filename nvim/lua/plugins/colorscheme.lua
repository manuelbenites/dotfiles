vim.g.material_style = "deep ocean"
return {
  {
    "marko-cerovac/material.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        contrast = {
          floating_windows = false, -- Enable contrast for floating windows
          line_numbers = true, -- Enable contrast background for line numbers
          sign_column = true, -- Enable contrast background for the sign column
          cursor_line = true, -- Enable darker background for the cursor line
          non_current_windows = true, -- Enable darker background for non-current windows
          popup_menu = false, -- Enable lighter background for the popup menu
          filetypes = { "alacritty", "packer", "qf" },
        },
        styles = {
          comments = { italic = true, bold = true }, -- Enable italic and bold comments
          keywords = { italic = true, bold = true }, -- Enable italic and bold keywords
          functions = { italic = false, bold = true }, -- Enable bold functions
          strings = { italic = false, bold = true }, -- Enable bold strings
          variables = { italic = true, bold = true }, -- Enable italic and bold variables
          types = { italic = true, bold = true }, -- Enable italic and bold types
        },
        disable = {
          colored_cursor = true,
          borders = false, -- Disable borders between verticaly split windows
          background = true,
          term_colors = true, -- Prevent the theme from setting terminal colors
          eob_lines = true, -- Hide the end-of-buffer lines
        },
        lualine_style = "stealth",
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
