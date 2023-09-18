-------------------------------------------------------------------------------- ____   ____.__
-- ______\   \ /   /|__| _____
-- \_  __ \   Y   / |  |/     \       Razak Mo's neovim config
--  |  | \/\     /  |  |  Y Y  \      https://github.com/razak17
--  |__|    \___/   |__|__|_|  /
--                           \/
--------------------------------------------------------------------------------
local init_path = debug.getinfo(1, "S").source:sub(2)
local base_dir = init_path:match("(.*[/\\])"):sub(1, -2)
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end
lol()
hhh = "#ffff00"
vim.g.did_load_filetypes = 0 -- deactivate vim based filetype detection
local reload, ok = pcall(require, "plenary.reload")
RELOAD = ok and reload.module or function(...) return ...
end
local name = "Some guy"
local status = "is awesome"
--TODO: Test todo Lorem ipsum dolor color
-- loca
--------------------------------------------------------------------------------
-- Load Module
--------------------------------------------------------------------------------
require("user.globals")
require("user.bootstrap")
require("user.config")
--       ,
-- lohello
-- cal
-- A B C D E O P S
-- hello
-- hello there
-- hello dome
-- hello llll
-- hello   lflfkfj
-- hello lflflfl
-- git@github.com:yutkat/convert-git-url.nvim.git


--  
-- 
-- 󰅣
-- 󰐅
-- local name = ""
  -- www.reddit.com
-- 󱞌
-- 1. Hello
-- 2. two
-- 3. three
-- align s/\s\+/ /
-- uuid
-- ref: https://github.com/theopn/theovim/blob/main/lua/core.lua#L178
local ui = rvim.ui

return {
  {
    'chrisgrieser/nvim-early-retirement',
    enabled = false,
    -- enabled = not rvim.plugins.minimal,
    event = 'VeryLazy',
    opts = {
      minimumBufferNum = 4,
      notificationOnAutoClose = true,
    },
  },
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
    'razak17/buffer_manager.nvim',
    enabled = false,
    keys = {
      {
        '<M-Space>',
        '<Cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>',
        desc = 'buffer manager: toggle',
      },
    },
    config = function()
      require('buffer_manager').setup({
        highlight = 'Normal',
        select_menu_item_commands = {
          v = { key = '<C-v>', command = 'vsplit' },
          h = { key = '<C-h>', command = 'split' },
        },
        borderchars = ui.border.common,
      })
      local bmui = require('buffer_manager.ui')
      local keys = '1234'
      for i = 1, #keys do
        local key = keys:sub(i, i)
        map(
          'n',
          fmt('<leader>%s', key),
          function() bmui.nav_file(i) end,
          { noremap = true, desc = 'buffer ' .. key }
        )
      end
    end,
  },
  {
    'stevearc/stickybuf.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'razak17/harpoon',
    keys = {
      {
        '<a-;>',
        '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
        desc = 'harpoon: toggle menu',
      },
      {
        '<localleader>ha',
        '<Cmd>lua require("harpoon.mark").add_file()<CR>',
        desc = 'harpoon: add file',
      },
      {
        '<localleader>hn',
        '<Cmd>lua require("harpoon.ui").nav_next()<CR>',
        desc = 'harpoon: next file',
      },
      {
        '<localleader>hp',
        '<Cmd>lua require("harpoon.ui").nav_prev()<CR>',
        desc = 'harpoon: prev file',
      },
      {
        '<a-1>',
        '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>',
        desc = 'harpoon: navigate to file 1',
      },
      {
        '<a-2>',
        '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>',
        desc = 'harpoon: navigate to file 2',
      },
      {
        '<a-3>',
        '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>',
        desc = 'harpoon: navigate to file 3',
      },
      {
        '<a-4>',
        '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>',
        desc = 'harpoon: navigate to file 4',
      },
    },
    opts = {
      menu = {
        width = 60,
        borderchars = ui.border.common,
      },
    },
  },
}
{
  {
    'chrisgrieser/nvim-early-retirement',
    enabled = false,
    -- enabled = not rvim.plugins.minimal,
    event = 'VeryLazy',
    opts = {
      minimumBufferNum = 4,
      notificationOnAutoClose = true,
    },
  },
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
    'razak17/buffer_manager.nvim',
    enabled = false,
    keys = {
      {
        '<M-Space>',
        '<Cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>',
        desc = 'buffer manager: toggle',
      },
    },
    config = function()
      require('buffer_manager').setup({
        highlight = 'Normal',
        select_menu_item_commands = {
          v = { key = '<C-v>', command = 'vsplit' },
          h = { key = '<C-h>', command = 'split' },
        },
        borderchars = ui.border.common,
      })
      local bmui = require('buffer_manager.ui')
      local keys = '1234'
      for i = 1, #keys do
        local key = keys:sub(i, i)
        map(
          'n',
          fmt('<leader>%s', key),
          function() bmui.nav_file(i) end,
          { noremap = true, desc = 'buffer ' .. key }
        )
      end
    end,
  },
  {
    'stevearc/stickybuf.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'razak17/harpoon',
    keys = {
      {
        '<a-;>',
        '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
        desc = 'harpoon: toggle menu',
      },
      {
        '<localleader>ha',
        '<Cmd>lua require("harpoon.mark").add_file()<CR>',
        desc = 'harpoon: add file',
      },
      {
        '<localleader>hn',
        '<Cmd>lua require("harpoon.ui").nav_next()<CR>',
        desc = 'harpoon: next file',
      },
      {
        '<localleader>hp',
        '<Cmd>lua require("harpoon.ui").nav_prev()<CR>',
        desc = 'harpoon: prev file',
      },
      {
        '<a-1>',
        '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>',
        desc = 'harpoon: navigate to file 1',
      },
      {
        '<a-2>',
        '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>',
        desc = 'harpoon: navigate to file 2',
      },
      {
        '<a-3>',
        '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>',
        desc = 'harpoon: navigate to file 3',
      },
      {
        '<a-4>',
        '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>',
        desc = 'harpoon: navigate to file 4',
      },
    },
    opts = {
      menu = {
        width = 60,
        borderchars = ui.border.common,
      },
    },
  },
}
