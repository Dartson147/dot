local lsp_zero = require('lsp-zero')

--lsp.preset("recommended")
local lsp_attach = function(client, bufnr)
--lsp.on_attach(function(client, bufnr)

  -- see :help lsp-zero-keybindings
  -- to learn the available actions
lsp_zero.default_keymaps({buffer = bufnr})
--
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
--  vim.keymap.set('n', 'gt', 
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
  vim.keymap.set('n', 'gh', function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)
end

local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<Enter>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-;>'] = cmp.mapping.complete(),
    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-@>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

require'cmp_nvim_lsp'.default_capabilities()
require'lspconfig'.lua_ls.setup{}

--require'lspconfig'.ccls.setup{
--	on_attach = on_attach,
--	flagss = lsp_flags,
--}

require'lspconfig'.pyright.setup {
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "openFilesOnly",
      useLibraryCodeForTypes = true
    }
  }
}

require'lspconfig'.tsserver.setup {}
require'lspconfig'.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {}
  }
}
require'lspconfig'.clangd.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}


require'lspconfig'.clojure_lsp.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.grammarly.setup{}
require'lspconfig'.texlab.setup{
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		texlab = {
			auxDirectory = ".",
			bibtexFormatter = "texlab",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				executable = "latexmk",
				forwardSearchAfter = false,
				onSave = false
			},
			chktex = {
				onEdit = false,
				onOpenAndSave = false
			},
			diagnosticsDelay = 300,
			formatterLineLength = 80,
			forwardSearch = {
				args = {}
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = false,
			}
		}
	}
}
require'lspconfig'.textlsp.setup{}

--lsp.setup()
