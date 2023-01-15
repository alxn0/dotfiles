---------------- General --------------------------

-- Set a global leader
vim.g.mapleader = ';'
vim.g.maplocalleader = ','

-- Navigate between buffers
local keymap = vim.api.nvim_set_keymap
local nomap = {noremap = true}

keymap('n', '<A-j>', '<C-w>j', nomap)
keymap('n', '<A-k>', '<C-w>k', nomap)
keymap('n', '<A-h>', '<C-w>h', nomap)
keymap('n', '<A-l>', '<C-w>l', nomap)

keymap('i', '<A-j>', '<Esc><C-w>j', nomap)
keymap('i', '<A-k>', '<Esc><C-w>k', nomap)
keymap('i', '<A-h>', '<Esc><C-w>h', nomap)
keymap('i', '<A-l>', '<Esc><C-w>l', nomap)

keymap('t', '<A-j>', '<C-\\><C-n><C-w>j', nomap)
keymap('t', '<A-k>', '<C-\\><C-n><C-w>k', nomap)
keymap('t', '<A-h>', '<C-\\><C-n><C-w>h', nomap)
keymap('t', '<A-l>', '<C-\\><C-n><C-w>l', nomap)

-- Quit terminal mode
keymap('t', '<Esc>', '<C-\\><C-n>', nomap)

-- Yank to globl clipboard
keymap('n', '<leader>Y', "+y", {})

-- Yank line (as D, and C)
keymap('n', 'Y', "y$", nomap)

--------------- Plug specific ------------------

-- nvim tree
keymap('n', '<leader>nt', '<cmd>NvimTreeToggle<cr><Esc>', {})

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', nomap)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', nomap)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', nomap)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', nomap)
