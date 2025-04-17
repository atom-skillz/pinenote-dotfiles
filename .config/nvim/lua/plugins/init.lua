return {
    { "nvim-tree/nvim-web-devicons", opts = {} },
    {   "yorik1984/newpaper.nvim"   },
    {   "nyoom-engineering/oxocarbon.nvim"  },
    {   "EdenEast/nightfox.nvim"    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    {
        "mikew/nvim-drawer",
        opts = {},
        config = function(_, opts)
            local drawer = require('nvim-drawer')
            drawer.setup(opts)

            -- See usage and examples below.
            drawer.create_drawer({
                size = 25,
                position = 'left',
                should_reuse_previous_bufnr = false,
                should_close_on_bufwipeout = false,

                on_vim_enter = function(event)
                    event.instance.open({
                        focus = false,
                    })

                    vim.keymap.set('n', '<leader>e', function()
                        event.instance.focus_or_toggle()
                    end)
                end,

                on_did_create_buffer = function()
                    local nvim_tree_api = require('nvim-tree.api')
                    nvim_tree_api.tree.open({
                        current_window = true
                    })
                end,

                on_did_open = function()
                    local nvim_tree_api = require('nvim-tree.api')
                    nvim_tree_api.tree.reload()

                    vim.opt_local.number = false
                    vim.opt_local.signcolumn = 'no'
                    vim.opt_local.statuscolumn = ''
                end,

                on_did_close = function()
                    local nvim_tree_api = require('nvim-tree.api')
                    nvim_tree_api.tree.close()
                end,
            })
        end
    }
}
