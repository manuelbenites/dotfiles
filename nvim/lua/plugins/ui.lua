return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "buffers",
        buffer_close_icon = "",
        modified_icon = "●",
        numbers = "none",
        close_icon = "",
        tab_size = 20,
        left_trunc_marker = "",
        right_trunc_marker = "",
        colors_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        show_duplicate_prefix = true,
        separator_style = "slant",
        enforce_regular_tabs = true,
      },
      highlights = {
        buffer_selected = {
          fg = "#f07178",
          bg = "#0F111A",
          bold = true,
          italic = true,
        },
        buffer_visible = { bg = "#0F111A" },
        separator_selected = { fg = "#01110f" },
        separator_visible = { fg = "#01110f" },
        separator = { fg = "#01110f" },
        fill = { bg = "#01110f" },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "material",
      },
    },
  },
}
