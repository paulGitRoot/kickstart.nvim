return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      modules = {},
      sync_install = false,
      auto_install = true,
      ignore_install = {},

      ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'tsx',
        'html',
        'css',
        'json',
        'c',
        'cpp',
        'python',
      },

      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
