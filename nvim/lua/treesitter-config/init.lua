require'nvim-treesitter.configs'.setup {
    highlight = {enable = true, disable = {}},
    indent = {enable = true, disable = {}},
    ensure_installed = {
        "javascript", "typescript", "tsx", "css", "scss", "html", "json", "lua",
        "python", "sql", "yaml", "toml"
    },
    autotag = {enable = true},
    context_commentstring = {
        enable = true,
        config = {
            javascript = {
                __default = "// %s",
                jsx_element = "{/* %s */}",
                jsx_fragment = "{/* %s */}",
                jsx_attribute = "// %s",
                comment = "// %s"
            }
        }
    }
}
