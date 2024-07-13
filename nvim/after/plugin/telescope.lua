local builtin = require('telescope.builtin')
local ignore_filetypes_list = {
    "%.o", "%.d"
}
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


local telescope = require("telescope")
telescope.setup({
    defaults = {
        file_ignore_patterns = ignore_filetypes_list,
    },
    -- etc...
})
