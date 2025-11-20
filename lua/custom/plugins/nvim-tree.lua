return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  config = function()
    require('nvim-tree').setup {
      disable_netrw = true,
      hijack_netrw = true,
      update_cwd = true,

      view = {
        width = 30,
        side = 'left',
      },

      actions = {
        change_dir = { enable = true, global = false },
        open_file = { quit_on_open = false, resize_window = true },
      },

      renderer = {
        icons = {
          webdev_colors = true,

          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },

          glyphs = {
            default = '󰈚',
            symlink = '',
            folder = {
              default = '',
              open = '',
              empty = '',
              empty_open = '',
              symlink = '',
            },
            git = {
              unstaged = '',
              staged = '',
              unmerged = '',
              renamed = '➜',
              deleted = '',
              untracked = '',
              ignored = '◌',
            },
          },
        },
      },
    }
  end,
}
