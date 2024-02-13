  -- spec = {
  --   -- {
  --   --   import = plugins_enabled and 'rm.plugins' or nil,
  --   -- },
  --   { import = 'rm.plugins.theme' },
  --   { import = 'rm.plugins.core' },
  --   { import = 'rm.plugins.picker' },
  --   { import = 'rm.plugins.telescope' },
  --   { import = 'rm.plugins.treesitter' },
  --   { import = 'rm.plugins.motions' },
  --   { import = 'rm.plugins.fold' },
  --   { import = 'rm.plugins.ui' },
  --   { import = 'rm.plugins.tools' },
  --   { import = 'rm.plugins.lsp' },
  --   { import = 'rm.plugins.completion' },
  --   -- { import = 'rm.plugins.dashboard' },
  --   { import = 'rm.plugins.snippets' },
  --   { import = 'rm.plugins.ai' },
  --   { import = 'rm.plugins.animation' },
  --   { import = 'rm.plugins.buffers' },
  --   { import = 'rm.plugins.code_runner' },
  --   { import = 'rm.plugins.dadbod' },
  --   { import = 'rm.plugins.debugger' },
  --   { import = 'rm.plugins.dressing' },
  --   { import = 'rm.plugins.dropbar' },
  --   { import = 'rm.plugins.editing' },
  --   { import = 'rm.plugins.explorer' },
  --   { import = 'rm.plugins.git' },
  --   { import = 'rm.plugins.gp' },
  --   { import = 'rm.plugins.heirline' },
  --   { import = 'rm.plugins.hydra' },
  --   { import = 'rm.plugins.ibl' },
  --   { import = 'rm.plugins.lang' },
  --   { import = 'rm.plugins.leetcode' },
  -- },
    {
      'razak17/onedark.nvim',
      lazy = false,
      priority = 1000,
      opts = { variant = 'fill' },
      config = function(_, opts) require('onedark').setup(opts) end,
    },
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    {
      'xiyaowong/accelerated-jk.nvim',
      event = 'VeryLazy',
      config = function()
        require('accelerated-jk').setup({
          mappings = { j = 'gj', k = 'gk' },
        })
      end,
    },
    {
      'nvim-telescope/telescope.nvim',
      lazy = false,
      config = function()
        require('telescope').setup({})
        vim.keymap.set('n', '<c-p>', '<cmd>Telescope find_files<cr>')
      end,
    },
    {
      'ibhagwan/fzf-lua',
      cmd = 'FzfLua',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      keys = {
        { '<leader>ff', '<Cmd>FzfLua files<CR>', desc = 'find files' },
        { '<leader>fs', '<Cmd>FzfLua live_grep<CR>', desc = 'live grep' },
      },
      config = function()
        vim.api.nvim_set_hl(
          0,
          'FzfLuaNormal',
          { fg = '#ffff00', bg = '#ff0000' }
        )
        vim.api.nvim_set_hl(
          0,
          'FzfLuaBorder',
          { fg = '#ffff00', bg = '#ff0000' }
        )

        local fzf = require('fzf-lua')
        fzf.setup()
      end,
    },
    {
      'olimorris/persisted.nvim',
      cond = not rvim.plugins.minimal,
      lazy = false,
      init = function() rvim.command('ListSessions', 'Telescope persisted') end,
      opts = {
        use_git_branch = true,
        save_dir = fn.expand(vim.fn.stdpath('cache') .. '/sessions/'),
        ignored_dirs = { vim.fn.stdpath('data') },
        on_autoload_no_session = function() vim.cmd.Alpha() end,
        should_autosave = function() return vim.bo.filetype ~= 'alpha' end,
      },
    },
    {
      'kevinhwang91/nvim-ufo',
      cond = rvim.treesitter.enable,
      event = 'VeryLazy',
      keys = {
        {
          'zR',
          function() require('ufo').openAllFolds() end,
          'ufo: open all folds',
        },
        {
          'zM',
          function() require('ufo').closeAllFolds() end,
          'ufo: close all folds',
        },
        {
          'zK',
          function() require('ufo').peekFoldedLinesUnderCursor() end,
          'ufo: preview fold',
        },
      },
      opts = function()
        local ft_map = { rust = 'lsp' }
        require('ufo').setup({
          open_fold_hl_timeout = 0,
          preview = {
            win_config = {
              border = rvim.ui.current.border,
              winhighlight = 'NormalFloat:FloatBorder,FloatBorder:FloatBorder',
            },
          },
          enable_get_fold_virt_text = true,
          close_fold_kinds = { 'imports', 'comment' },
          provider_selector = function(_, ft)
            -- lsp better?
            return ft_map[ft] or { 'treesitter', 'indent' }
          end,
        })
      end,
      config = function()
        rvim.highlight.plugin('ufo', {
          theme = {
            ['onedark'] = {
              {
                Folded = {
                  bold = false,
                  italic = false,
                  bg = { from = 'CursorLine', alter = -0.15 },
                },
              },
            },
          },
        })
      end,
      dependencies = { 'kevinhwang91/promise-async' },
    },
    -- {
    --   'chrisgrieser/nvim-origami',
    --   cond = rvim.treesitter.enable,
    --   event = 'BufReadPost',
    --   keys = {
    --     {
    --       '<BS>',
    --       function() require('origami').h() end,
    --       desc = 'toggle fold',
    --     },
    --   },
    --   opts = { setupFoldKeymaps = false },
    -- },
    {
      'nvim-treesitter/nvim-treesitter',
      cond = rvim.treesitter.enable,
      event = 'BufReadPost',
      build = ':TSUpdate',
      keys = {
        {
          'R',
          '<cmd>edit | TSBufEnable highlight<CR>',
          desc = 'treesitter: enable highlight',
        },
      },
      config = function()
        require('nvim-treesitter.configs').setup({
          auto_install = true,
          highlight = {
            enable = true,
            disable = function(_, buf)
              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats =
                pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then return true end
            end,
            additional_vim_regex_highlighting = { 'org', 'sql' },
          },
          incremental_selection = {
            enable = false,
            disable = { 'help' },
            keymaps = {
              init_selection = '<CR>', -- maps in normal mode to init the node/scope selection
              node_incremental = '<CR>', -- increment to the upper named parent
              node_decremental = '<C-CR>', -- decrement to the previous node
            },
          },
          ensure_installed = {
            'c',
            'vim',
            'vimdoc',
            'query',
            'lua',
            'luadoc',
            'luap',
            'diff',
            'regex',
            'gitcommit',
            'git_config',
            'git_rebase',
            'markdown',
            'markdown_inline',
          },
        })
      end,
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        {
          'JoosepAlviste/nvim-ts-context-commentstring',
          opts = { enable_autocmd = false },
          config = function(_, opts)
            vim.g.skip_ts_context_commentstring_module = true
            require('ts_context_commentstring').setup(opts)
          end,
        },
      },
    },
