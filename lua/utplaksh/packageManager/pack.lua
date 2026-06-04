vim.pack.add({
    -- Color scheme
    "https://github.com/rebelot/kanagawa.nvim",
    -- web devicons
    'https://github.com/nvim-tree/nvim-web-devicons',
    -- lua line 
    'https://github.com/nvim-lualine/lualine.nvim',
    -- nvim-tree
    'https://github.com/nvim-tree/nvim-tree.lua'

})

require("utplaksh.packageManager.plugins.colorTheme")
require("utplaksh.packageManager.plugins.luaLine")
require("utplaksh.packageManager.plugins.nvim-tree")
