-- Базовые настройки
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  'rebelot/kanagawa.nvim',
  'folke/tokyonight.nvim',
  'preservim/nerdtree',
}

require("lazy").setup(plugins, {})

require('lualine').setup {
  options = {
    theme = 'kanagawa',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
  }
}

vim.cmd [[colorscheme kanagawa-wave]]

