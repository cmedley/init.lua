-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

--require 'colorizer'.setup()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'ibhagwan/fzf-lua',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- optional for icons
    config = function()
      require('fzf-lua').setup({})
    end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('mhinz/vim-mix-format')
  use('tpope/vim-liquid')
  use('github/copilot.vim')
    
  use {
    "CopilotC-Nvim/CopilotChat.nvim", branch = 'main',
    requires = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("CopilotChat").setup({
          debug = true
      })
    end
  }

  use {
    "nvimtools/none-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            local group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })
            vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = group,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })
    end
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
	    -- LSP Support
      {'neovim/nvim-lspconfig'},
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-buffer'},
	    {'hrsh7th/cmp-path'},
	    {'saadparwaiz1/cmp_luasnip'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'hrsh7th/cmp-nvim-lua'},

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},
	    {'rafamadriz/friendly-snippets'},
	  }
  }

  use({'vim-test/vim-test'})

 -- use('NvChad/nvim-colorizer.lua')

--  use({
--      'lunarvim/darkplus.nvim',
--      as = 'darkplus',
--      config = function()
--    	  vim.cmd('colorscheme darkplus')
--      end
--  })
 
use({ 
    "catppuccin/nvim", 
    as = "catppuccin", 
    config = function() 
      vim.cmd('colorscheme catppuccin-mocha')
  end
})

--require("rose-pine").setup({
--    variant = 'main',
--    dark_variant = 'main'
--})
--
--use({
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     config = function()
--   	  vim.cmd('colorscheme rose-pine')
--     end
-- })


 use('APZelos/blamer.nvim')

 use {"ellisonleao/glow.nvim", config = function() require("glow").setup({
  border = "rounded"
 }) end}

use('tpope/vim-projectionist')
use('c-brenn/fuzzy-projectionist.vim')
use('andyl/vim-projectionist-elixir')

use('ludovicchabant/vim-gutentags')

end)
