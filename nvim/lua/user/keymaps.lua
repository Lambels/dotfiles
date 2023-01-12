local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes:
--      normal mode: "n"
--      insert mode: "i"
--      visual mode: "v"
--      visual block mode: "x"
--      term_mode: "t"
--      command_mode: "c"
 
-- NORMAL MODE --
-- window navigations
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- quick acess to tree view
vim.keymap.set("n", "<leader>e", ":Explore<cr>", opts)

-- select line
vim.keymap.set("n", "<leader>l", "<S-v>", opts)

-- stay in visual mode + move text
vim.keymap.set("n", "∆", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("n", "˚", "<Esc>:m .-2<CR>==gi", opts)

-- navigate buffers
vim.keymap.set("n", "<S-j>", ":bnext<cr>", opts)
vim.keymap.set("n", "<S-k>", ":bprevious<cr>", opts)

-- VISUAL MODE --
-- un select line
vim.keymap.set("v", "<leader>l", "<S-v>", opts)

-- stay in visual mode + move text
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv",opts)
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- INSERT MODE --
-- easy path to normal mode
vim.keymap.set("i", ";l", "<ESC>", opts)
