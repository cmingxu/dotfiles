-- LSP settings
local lspconfig = require 'lspconfig'

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = false,
        virtual_text = false,
        update_in_insert = false
    }
)

