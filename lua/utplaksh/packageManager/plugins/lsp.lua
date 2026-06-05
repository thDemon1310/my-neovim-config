require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" , "eslint", "ts_ls",  "tailwindcss" }
})
vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require'
                },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})
local keymap = vim.keymap
keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition " })
keymap.set('n', '<A-F>', vim.lsp.buf.format, { desc = "format local buffer" })
