local nvimtree = require("nvim-tree")
--config = function ()


	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	-- optionally enable 24-bit colour
	vim.opt.termguicolors = true

	-- empty setup using defaults
	--require("nvim-tree").setup()

	-- OR setup with some options
--	require("nvim-tree").setup({
	nvimtree.setup({
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
			relativenumber = true,
		},
		renderer = {
			indent_markers = {
				enable = true,
			},
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "", -- arrow when folder is closed
						arrow_open = "", -- arrow when folder is open
					},
				},
			},
		},
		actions = {
			open_file = {
				window_picker = {
					enable = false,
				},
			},
		},
		filters = {
			dotfiles = true,
		},
		git = {
			ignore = false,
		},

	})
	--Keymappings
	local keymap = vim.keymap -- for conciseness

	keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	keymap.set("n", "<leader>ff", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
	keymap.set("n", "<leader>fc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
	keymap.set("n", "<leader>fr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
--end
