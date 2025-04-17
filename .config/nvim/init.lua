require("config.lazy")

vim.opt.showmatch = true              -- show matching
vim.opt.mouse = 'a'               -- middle-click paste with 
vim.opt.hlsearch = true               -- highlight search 
vim.opt.incsearch = true              -- incremental search
vim.opt.tabstop = 4              -- number of columns occupied by a tab 
vim.opt.softtabstop = 4          -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true              -- converts tabs to white space
vim.opt.shiftwidth = 4           -- width for autoindents
vim.opt.autoindent = true             -- indent a new line the same amount as the line just typed
vim.opt.number = true                 -- add line numbers
vim.opt.wildmode = { "longest", "list" }  -- get bash-like tab completions
vim.opt.clipboard = "unnamedplus"  -- using system clipboard
vim.opt.cursorline = true             -- highlight current cursorline
vim.opt.ttyfast = true                -- Speed up scrolling in Vim

vim.opt.termguicolors = true

-- vim.opt.background = "dark" -- set this to dark or light
-- vim.cmd("colorscheme oxocarbon")

vim.g.newpaper_style = "light"
vim.cmd 'colorscheme newpaper'

-- vim.opt.colorcolumn = { "80", "120" }
-- vim.opt.columns = 120
