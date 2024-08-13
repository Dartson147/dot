local palette = 'nordic.colors'
-- Lua initialization file
--vim.cmd.colorscheme 'kanagawa'

--Optional Theme
vim.cmd("colorscheme kanagawa-wave")
--vim.cmd("colorscheme kanagawa")
--vim.cmd("colorscheme kanagawa-dragon")
--vim.cmd("colorscheme kanagawa-lotus")


function ColorKanagawa(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end
--ColorNightfly()
-- enable background transparent
