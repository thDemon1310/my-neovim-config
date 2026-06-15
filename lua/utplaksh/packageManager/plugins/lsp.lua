require("mason").setup()
local lsp_names = {
	"lua_ls",
	"eslint",
	"ts_ls",
	"tailwindcss",
	"graphql",
	"html",
}
require("mason-lspconfig").setup({
	ensure_installed = lsp_names,
})
require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"dotenv-linter",
	},
})
local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.config("*", { capabilities = capabilities })
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim", "require" } },
			workspace = { library = vim.api.nvim_get_runtime_file("", true) },
			telemetry = { enable = false },
		},
	},
})
vim.lsp.enable(lsp_names)
local keymap = vim.keymap
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
-- keymap.set("n", "<A-F>", vim.lsp.buf.format, { desc = "Format local buffer" }) -- Go to "./conform.lua
keymap.set("n", "df", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
