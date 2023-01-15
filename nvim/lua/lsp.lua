-- Diagnostic settings
vim.diagnostic.config({
  virtual_text = false,   -- Turn off inline diagnostics
  signs = true,          -- show sign on the border
  underline = true       -- Underline
})

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }

-- vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.open_float(nil,{focus=false})<cr>', opts)
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.setloclist, opts)

-- Not sure what it does...
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Load lsp config
local lspconfig = require('lspconfig')

-- Lua snip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'

cmp.setup {
  completion = {
    autocomplete = false, -- No autocompletion, start with <C-space>
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'jedi_language_server' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end


