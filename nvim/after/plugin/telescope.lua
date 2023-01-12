local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>af', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ag', function() 
        print("Hello")
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
