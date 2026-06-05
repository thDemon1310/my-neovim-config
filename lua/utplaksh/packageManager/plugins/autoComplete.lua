local cmp = require("blink.cmp")
local config = {
	keymap = { preset = "default" },
	completion = { documentation = { auto_show = true } },
	sources = { default = { "lsp", "path", "snippets", "buffer" } },
	fuzzy = { implementation = "rust" },
	signature = { enabled = true },
}
cmp.setup(config)
