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

})

require("utplaksh.packageManager.plugins.colorTheme")
require("utplaksh.packageManager.plugins.luaLine")
require("utplaksh.packageManager.plugins.nvim-tree")
require("utplaksh.packageManager.plugins.telescope")
