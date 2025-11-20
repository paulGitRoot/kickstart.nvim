return {
  'rjshkhr/shadow.nvim',
  name = 'shadow',
  lazy = false,
  priority = 1000,
  config = function()
    require('shadow').setup()
  end,
}
