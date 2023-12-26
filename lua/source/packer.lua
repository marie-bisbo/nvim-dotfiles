-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Packer
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Colourscheme
  use({
	  'AlexvZyl/nordic.nvim',
	  as = 'nordic',
	  config = function()
		  vim.cmd('colorscheme nordic')
	  end
  })

-- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

-- Harpoon
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')

-- Undotree
  use('mbbill/undotree')

-- Fugitive
  use('tpope/vim-fugitive')

end)
