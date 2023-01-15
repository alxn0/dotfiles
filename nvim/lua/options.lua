-- General options --

-- Tabs
vim.bo.expandtab = true          -- Convert tabs to space
vim.bo.softtabstop = 2           -- Number of spaces for a tab 
vim.bo.shiftwidth = 2            -- Number of spaces for autoindent

-- Editor
vim.wo.colorcolumn = '80'        -- Set a colored vertical line
vim.cmd [[highlight ColorColumn ctermbg=8]]     -- Set the color
vim.opt.number = true            -- set numbered lines

-- Enter/open terminal in terminal mode
vim.cmd[[ autocmd BufWinEnter,WinEnter term://* startinsert ]]
vim.cmd[[ autocmd TermOpen * startinsert ]]

-- No number in terminal
vim.cmd[[ autocmd TermOpen * setlocal nonumber ]]

-- Set color scheme
-- vim.cmd('colorscheme base16-nord')

-- Avoid resizing when opening/closing windows
vim.wo.winfixwidth = true
vim.wo.winfixheight = true
