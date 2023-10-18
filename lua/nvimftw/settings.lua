vim.opt.guicursor = ""

--syntax enable

vim.opt.encoding = "utf-8"
vim.opt.ruler = true
vim.opt.nu = true
--vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.showtabline = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
--vim.opt.wrap = false
vim.opt.mouse = a          -- " Enable mouse selection
--vim.opt.laststatus = 0
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.splitright = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.timeoutlen = 500
vim.opt.colorcolumn = "80"

vim.api.nvim_set_option("clipboard", "unnamed")
--vim.opt.clipboard = unnamed    --Copy pasta between vim and everything
--vim.g.mapleader = " "
