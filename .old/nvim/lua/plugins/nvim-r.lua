-- Configurations for nvim-r plugin
vim.cmd[[ let R_app = "radian" ]] 	-- Set REPL
vim.cmd[[ let R_cmd = 'R' ]]   		-- Set engine
vim.cmd[[ let R_hl_term = 0 ]]                                                                             
vim.cmd[[ let R_args = [] ]]		-- Arguments pass to term
vim.cmd[[ let R_bracketed_paste = 1 ]]	-- Close bracket
vim.cmd[[ let R_assign = 0]]		-- Dont <- automaticaly

-- Set minimum width to open terminal on right
vim.cmd[[ let R_min_editor_width = 80 ]]
vim.cmd[[ let R_rconsole_width = 50 ]]

-- Change keymaps for line and selection to remain coherent with vimcmdline
vim.api.nvim_exec([[
  function! s:customNvimRMappings()
    nmap <buffer> <space> <Plug>RDSendLine
    vmap <buffer> <space> <Plug>RSendSelection
  endfunction
  augroup myNvimR
   au!
   autocmd filetype r call s:customNvimRMappings()
  augroup end]], false)
