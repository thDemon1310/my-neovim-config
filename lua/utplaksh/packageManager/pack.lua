vim.pack.add({
    -- Color scheme
    "https://github.com/rebelot/kanagawa.nvim",
    -- web devicons
    'https://github.com/nvim-tree/nvim-web-devicons',
    -- lua line
    'https://github.com/nvim-lualine/lualine.nvim',
    -- nvim-tree
    'https://github.com/nvim-tree/nvim-tree.lua',
    -- === TELESCOPE & DEPENDENCIES ===
    -- 1. Plenary (Required dependency for Telescope)
    'https://github.com/nvim-lua/plenary.nvim',
    -- 2. Telescope core
    'https://github.com/nvim-telescope/telescope.nvim',
    -- 3. FZF Native (Optional but highly recommended for speed)
    'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
    -- git intigration
    'https://github.com/lewis6991/gitsigns.nvim',
    -- indent line
    "https://github.com/lukas-reineke/indent-blankline.nvim",
    -- lazygit plugin
    "https://github.com/kdheepak/lazygit.nvim",
    -- === COnfigration for the lsp ===
    -- nvim lsp-config
    "https://github.com/neovim/nvim-lspconfig",
    -- nvim lsp manager mason
    "https://github.com/mason-org/mason.nvim",
    -- mason Lspcongi
    "https://github.com/mason-org/mason-lspconfig.nvim",
    -- == TreeSitter ==
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = "main" },
    -- == Autocomplete  blink.cmp==
    -- Just the URL works for default branch
    'https://github.com/rafamadriz/friendly-snippets',

    -- Use a table to specify semantic versions
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("1.*")
    },
    -- Mason tool installer
    'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim'
})

require("utplaksh.packageManager.plugins.colorTheme")
require("utplaksh.packageManager.plugins.luaLine")
require("utplaksh.packageManager.plugins.nvim-tree")
require("utplaksh.packageManager.plugins.telescope")
require("utplaksh.packageManager.plugins.treesitter")
require("utplaksh.packageManager.plugins.indent")
require("utplaksh.packageManager.plugins.lsp")
require("utplaksh.packageManager.plugins.autoComplete")

-- Open LazyGit floating window
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })
