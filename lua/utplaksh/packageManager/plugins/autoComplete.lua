require("luasnip.loaders.from_vscode").lazy_load()
local cmp = require("blink.cmp")

local config = {
	keymap = {
		preset = "default",
		["<Tab>"] = {
			"snippet_forward",
			"fallback",
		},
		["<S-Tab>"] = {
			"snippet_backward",
			"fallback",
		},
	},
	completion = {
		documentation = { auto_show = true },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	snippets = {
		preset = "luasnip",
	},
	fuzzy = {
		implementation = "rust",
	},
	signature = {
		enabled = true,
	},
}

cmp.setup(config)
