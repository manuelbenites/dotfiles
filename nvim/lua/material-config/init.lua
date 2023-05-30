vim.g.material_style = 'deep ocean'

require('material').setup({
    contrast = {
        floating_windows = false, -- Enable contrast for floating windows
        line_numbers = false, -- Enable contrast background for line numbers
        sign_column = false, -- Enable contrast background for the sign column
        cursor_line = true, -- Enable darker background for the cursor line
        non_current_windows = true, -- Enable darker background for non-current windows
        popup_menu = false, -- Enable lighter background for the popup menu
        filetypes = {"alacritty", "packer", "qf"}
    },
    styles = {
        comments = {italic = true, bold = true}, -- Enable italic and bold comments
        keywords = {italic = true, bold = true}, -- Enable italic and bold keywords
        functions = {italic = false, bold = true}, -- Enable bold functions
        strings = {italic = false, bold = true}, -- Enable bold strings
        variables = {italic = true, bold = true}, -- Enable italic and bold variables
        types = {italic = true, bold = true} -- Enable italic and bold types
    },

    disable = {
        colored_cursor = true,
        borders = false, -- Disable borders between verticaly split windows
        background = true,
        term_colors = true, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {lighter = false, darker = true},

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    plugins = {
        -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
        nvim_cmp = true,
        telescope = true,
        lsp_saga = true,
        indent_blankline = true
    }
})

vim.cmd 'colorscheme material'
