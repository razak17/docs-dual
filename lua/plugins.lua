return {
  {
    'razak17/cybu.nvim',
    enabled = not rvim.plugins.minimal,
    event = { 'BufRead', 'BufNewFile' },
    opts = {
      position = { relative_to = 'win', anchor = 'topright' },
      style = { border = 'single', hide_buffer_id = true },
    },
  },
  {
    'kazhala/close-buffers.nvim',
    cmd = { 'BDelete', 'BWipeout' },
    keys = { { '<leader>c', '<Cmd>BDelete this<CR>', desc = 'buffer delete' } },
  },
  {
    'Pheon-Dev/buffalo-nvim',
    keys = {
      {
        '<M-Space>',
        '<Cmd>lua require("buffalo.ui").toggle_buf_menu()<CR>',
        desc = 'buffalo: toggle',
      },
    },
    opts = {
      borderchars = ui.border.common,
      buffer_commands = {
        edit = { key = '<CR>', command = 'edit' },
        split = { key = 's', command = 'split' },
        vsplit = { key = 'v', command = 'vsplit' },
        buffer_delete = { key = 'd', command = 'bd' },
      },
    },
    config = function(_, _opts)
      rvim.highlight.plugin('buffalo', {
        { BuffaloBorder = { inherit = 'FloatBorder' } },
      })
      require('buffalo').setup(_opts)
      local opts = { noremap = true }
      local bui = require('buffalo.ui')
      map('n', '<s-l>', bui.nav_buf_next, opts)
      map('n', '<s-h>', bui.nav_buf_prev, opts)
      map({ 't', 'n' }, '<M-\\>', bui.toggle_tab_menu, opts)
    end,
  },
  {
    'stevearc/stickybuf.nvim',
    event = 'VeryLazy',
    opts = {},
  },
}
