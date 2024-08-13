local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tl', builtin.find_files, {})
-- TL stands for telescope

vim.keymap.set('n', '<C-p>', builtin.git_files, {}) 
-- Normal Control+p

vim.keymap.set('n', '<leader>tg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- TG stands for telescope grep

end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
