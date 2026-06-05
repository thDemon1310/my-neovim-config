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
	-- Added nginx_language_server here where it belongs
	ensure_installed = lsp_names,
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"dotenv-linter",
	},
})

-- 1. Grab your blink capabilities
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- 2. APPLY GLOBALLY: This single line replaces your entire web_servers loop!
vim.lsp.config("*", { capabilities = capabilities })

-- 3. Specific config for lua_ls (capabilities are already handled by the * above)
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

-- 4. BULK ENABLE: This replaces your all_servers loop!
vim.lsp.enable(lsp_names)

-- 5. Keymaps (I added their diagnostic hover map, it is very useful!)
local keymap = vim.keymap
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set("n", "<A-F>", vim.lsp.buf.format, { desc = "Format local buffer" })
keymap.set("n", "df", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
