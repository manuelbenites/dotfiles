local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '' -- TypeParameter
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.cssls.setup {capabilities = capabilities}

nvim_lsp.html.setup {capabilities = capabilities}

nvim_lsp.lua_ls.setup {capabilities = capabilities}

nvim_lsp.tsserver.setup {capabilities = capabilities}

nvim_lsp.tailwindcss.setup {capabilities = capabilities}

nvim_lsp.pyright.setup {capabilities = capabilities}

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end

vim.diagnostic.config({
    virtual_text = {prefix = '●'},
    update_in_insert = true,
    float = {
        source = "always" -- Or "if_many"
    }
})
