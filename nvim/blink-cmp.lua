return {
  -- When specifying 'preset' in the keymap table, the custom key mappings are merged with the preset,
  -- and any conflicting keys will overwrite the preset mappings.
  -- The "fallback" command will run the next non blink keymap.
  --
  -- Example:
  --
  -- keymap = {
  --   preset = 'default',
  --   ['<Up>'] = { 'select_prev', 'fallback' },
  --   ['<Down>'] = { 'select_next', 'fallback' },
  --
  --   -- disable a keymap from the preset
  --   ['<C-e>'] = {},
  -- },
  --
  -- When defining your own keymaps without a preset, no keybinds will be assigned automatically.
  --
  -- Available commands:
  --   show, hide, cancel, accept, select_and_accept, select_prev, select_next, show_documentation, hide_documentation,
  --   scroll_documentation_up, scroll_documentation_down, snippet_forward, snippet_backward, fallback
  --
  -- "default" keymap
  --   ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  --   ['<C-e>'] = { 'hide' },
  --   ['<C-y>'] = { 'select_and_accept' },
  --
  --   ['<C-p>'] = { 'select_prev', 'fallback' },
  --   ['<C-n>'] = { 'select_next', 'fallback' },
  --
  --   ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  --   ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
  --
  --   ['<Tab>'] = { 'snippet_forward', 'fallback' },
  --   ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
  --
  -- "super-tab" keymap
  --   you may want to set `completion.trigger.show_in_snippet = false`
  --   or use `completion.list.selection = "manual" | "auto_insert"`
  --
  --   ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  --   ['<C-e>'] = { 'hide', 'fallback' },
  --
  --   ['<Tab>'] = {
  --     function(cmp)
  --       if cmp.snippet_active() then return cmp.accept()
  --       else return cmp.select_and_accept() end
  --     end,
  --     'snippet_forward',
  --     'fallback'
  --   },
  --   ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
  --
  --   ['<Up>'] = { 'select_prev', 'fallback' },
  --   ['<Down>'] = { 'select_next', 'fallback' },
  --   ['<C-p>'] = { 'select_prev', 'fallback' },
  --   ['<C-n>'] = { 'select_next', 'fallback' },
  --
  --   ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  --   ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
  --
  -- "enter" keymap
  --   you may want to set `completion.list.selection = "manual" | "auto_insert"`
  --
  --   ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  --   ['<C-e>'] = { 'hide', 'fallback' },
  --   ['<CR>'] = { 'accept', 'fallback' },
  --
  --   ['<Tab>'] = { 'snippet_forward', 'fallback' },
  --   ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
  --
  --   ['<Up>'] = { 'select_prev', 'fallback' },
  --   ['<Down>'] = { 'select_next', 'fallback' },
  --   ['<C-p>'] = { 'select_prev', 'fallback' },
  --   ['<C-n>'] = { 'select_next', 'fallback' },
  --
  --   ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  --   ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
  keymap = 'default',

  -- Enables keymaps, completions and signature help when true
  enabled = function() return vim.bo.buftype ~= "prompt" end,
  -- Example for blocking multiple filetypes
  -- enabled = function()
  --  return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype) and vim.bo.buftype ~= "prompt"
  -- end,

  snippets = {
    -- Function to use when expanding LSP provided snippets
    expand = function(snippet) vim.snippet.expand(snippet) end,
    -- Function to use when checking if a snippet is active
    active = function(filter) return vim.snippet.active(filter) end,
    -- Function to use when jumping between tab stops in a snippet, where direction can be negative or positive
    jump = function(direction) vim.snippet.jump(direction) end,
  },

  completion = {
    keyword = {
      -- 'prefix' will fuzzy match on the text before the cursor
      -- 'full' will fuzzy match on the text before *and* after the cursor
      -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
      range = 'prefix',
      -- Regex used to get the text when fuzzy matching
      regex = '[-_]\\|\\k',
      -- After matching with regex, any characters matching this regex at the prefix will be excluded
      exclude_from_prefix_regex = '[\\-]',
    },

    trigger = {
      -- When false, will not show the completion window automatically when in a snippet
      show_in_snippet = true,
      -- When true, will show the completion window after typing a character that matches the `keyword.regex`
      show_on_keyword = true,
      -- When true, will show the completion window after typing a trigger character
      show_on_trigger_character = true,
      -- LSPs can indicate when to show the completion window via trigger characters
      -- however, some LSPs (i.e. tsserver) return characters that would essentially
      -- always show the window. We block these by default.
      show_on_blocked_trigger_characters = { ' ', '\n', '\t' },
      -- When both this and show_on_trigger_character are true, will show the completion window
      -- when the cursor comes after a trigger character after accepting an item
      show_on_accept_on_trigger_character = true,
      -- When both this and show_on_trigger_character are true, will show the completion window
      -- when the cursor comes after a trigger character when entering insert mode
      show_on_insert_on_trigger_character = true,
      -- List of trigger characters (on top of `show_on_blocked_trigger_characters`) that won't trigger
      -- the completion window when the cursor comes after a trigger character when
      -- entering insert mode/accepting an item
      show_on_x_blocked_trigger_characters = { "'", '"', '(' },
    },

    list = {
      -- Maximum number of items to display
      max_items = 200,
      -- Controls if completion items will be selected automatically,
      -- and whether selection automatically inserts
      selection = 'preselect',
      -- Controls how the completion items are selected
      -- 'preselect' will automatically select the first item in the completion list
      -- 'manual' will not select any item by default
      -- 'auto_insert' will not select any item by default, and insert the completion items automatically
      -- when selecting them
      --
      -- You may want to bind a key to the `cancel` command, which will undo the selection
      -- when using 'auto_insert'
      cycle = {
        -- When `true`, calling `select_next` at the *bottom* of the completion list
        -- will select the *first* completion item.
        from_bottom = true,
        -- When `true`, calling `select_prev` at the *top* of the completion list
        -- will select the *last* completion item.
        from_top = true,
      },
    },

    accept = {
      -- Create an undo point when accepting a completion item
      create_undo_point = true,
      -- Experimental auto-brackets support
      auto_brackets = {
        -- Whether to auto-insert brackets for functions
        enabled = false,
        -- Default brackets to use for unknown languages
        default_brackets = { '(', ')' },
        -- Overrides the default blocked filetypes
        override_brackets_for_filetypes = {},
        -- Synchronously use the kind of the item to determine if brackets should be added
        kind_resolution = {
          enabled = true,
          blocked_filetypes = { 'typescriptreact', 'javascriptreact', 'vue' },
        },
        -- Asynchronously use semantic token to determine if brackets should be added
        semantic_token_resolution = {
          enabled = true,
          blocked_filetypes = {},
          -- How long to wait for semantic tokens to return before assuming no brackets should be added
          timeout_ms = 400,
        },
      },
    },

    menu = {
      enabled = true,
      min_width = 15,
      max_height = 10,
      border = 'none',
      winblend = 0,
      winhighlight = 'Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None',
      -- Keep the cursor X lines away from the top/bottom of the window
      scrolloff = 2,
      -- Note that the gutter will be disabled when border ~= 'none'
      scrollbar = true,
      -- Which directions to show the window,
      -- falling back to the next direction when there's not enough space
      direction_priority = { 's', 'n' },

      -- Whether to automatically show the window when new completion items are available
      auto_show = true,

      -- Controls how the completion items are rendered on the popup window
      draw = {
        -- Aligns the keyword you've typed to a component in the menu
        align_to_component = 'label', -- or 'none' to disable
        -- Left and right padding, optionally { left, right } for different padding on each side
        padding = 1,
        -- Gap between columns
        gap = 1,
        -- Use treesitter to highlight the label text
        treesitter = false,

        -- Components to render, grouped by column
        columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },
        -- for a setup similar to nvim-cmp: https://github.com/Saghen/blink.cmp/pull/245#issuecomment-2463659508
        -- columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },

        -- Definitions for possible components to render. Each component defines:
        --   ellipsis: whether to add an ellipsis when truncating the text
        --   width: control the min, max and fill behavior of the component
        --   text function: will be called for each item
        --   highlight function: will be called only when the line appears on screen
        components = {
          kind_icon = {
            ellipsis = false,
            text = function(ctx) return ctx.kind_icon .. ctx.icon_gap end,
            highlight = function(ctx)
              return require('blink.cmp.completion.windows.render.tailwind').get_hl(ctx) or 'BlinkCmpKind' .. ctx.kind
            end,
          },

          kind = {
            ellipsis = false,
            width = { fill = true },
            text = function(ctx) return ctx.kind end,
            highlight = function(ctx)
              return require('blink.cmp.completion.windows.render.tailwind').get_hl(ctx) or 'BlinkCmpKind' .. ctx.kind
            end,
          },

          label = {
            width = { fill = true, max = 60 },
            text = function(ctx) return ctx.label .. ctx.label_detail end,
            highlight = function(ctx)
              -- label and label details
              local highlights = {
                { 0, #ctx.label, group = ctx.deprecated and 'BlinkCmpLabelDeprecated' or 'BlinkCmpLabel' },
              }
              if ctx.label_detail then
                table.insert(highlights, { #ctx.label, #ctx.label + #ctx.label_detail, group = 'BlinkCmpLabelDetail' })
              end

              -- characters matched on the label by the fuzzy matcher
              for _, idx in ipairs(ctx.label_matched_indices) do
                table.insert(highlights, { idx, idx + 1, group = 'BlinkCmpLabelMatch' })
              end

              return highlights
            end,
          },

          label_description = {
            width = { max = 30 },
            text = function(ctx) return ctx.label_description end,
            highlight = 'BlinkCmpLabelDescription',
          },

          source_name = {
            width = { max = 30 },
            text = function(ctx) return ctx.source_name end,
            highlight = 'BlinkCmpSource',
          },
        },
      },
    },

    documentation = {
      -- Controls whether the documentation window will automatically show when selecting a completion item
      auto_show = false,
      -- Delay before showing the documentation window
      auto_show_delay_ms = 500,
      -- Delay before updating the documentation window when selecting a new item,
      -- while an existing item is still visible
      update_delay_ms = 50,
      -- Whether to use treesitter highlighting, disable if you run into performance issues
      treesitter_highlighting = true,
      window = {
        min_width = 10,
        max_width = 60,
        max_height = 20,
        border = 'padded',
        winblend = 0,
        winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None',
        -- Note that the gutter will be disabled when border ~= 'none'
        scrollbar = true,
        -- Which directions to show the documentation window,
        -- for each of the possible menu window directions,
        -- falling back to the next direction when there's not enough space
        direction_priority = {
          menu_north = { 'e', 'w', 'n', 's' },
          menu_south = { 'e', 'w', 's', 'n' },
        },
      },
    },
    -- Displays a preview of the selected item on the current line
    ghost_text = {
      enabled = false,
    },
  },

  -- Experimental signature help support
  signature = {
    enabled = false,
    trigger = {
      blocked_trigger_characters = {},
      blocked_retrigger_characters = {},
      -- When true, will show the signature help window when the cursor comes after a trigger character when entering insert mode
      show_on_insert_on_trigger_character = true,
    },
    window = {
      min_width = 1,
      max_width = 100,
      max_height = 10,
      border = 'padded',
      winblend = 0,
      winhighlight = 'Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder',
      scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
      -- Which directions to show the window,
      -- falling back to the next direction when there's not enough space,
      -- or another window is in the way
      direction_priority = { 'n', 's' },
      -- Disable if you run into performance issues
      treesitter_highlighting = true,
    },
  },


  fuzzy = {
    -- when enabled, allows for a number of typos relative to the length of the query
    -- disabling this matches the behavior of fzf
    use_typo_resistance = true,
    -- frecency tracks the most recently/frequently used items and boosts the score of the item
    use_frecency = true,
    -- proximity bonus boosts the score of items matching nearby words
    use_proximity = true,
    max_items = 200,
    -- controls which sorts to use and in which order, these three are currently the only allowed options
    sorts = { 'label', 'kind', 'score' },

    prebuilt_binaries = {
      -- Whether or not to automatically download a prebuilt binary from github. If this is set to `false`
      -- you will need to manually build the fuzzy binary dependencies by running `cargo build --release`
      download = true,
      -- When downloading a prebuilt binary, force the downloader to resolve this version. If this is unset
      -- then the downloader will attempt to infer the version from the checked out git tag (if any).
      --
      -- Beware that if the FFI ABI changes while tracking main then this may result in blink breaking.
      force_version = nil,
      -- When downloading a prebuilt binary, force the downloader to use this system triple. If this is unset
      -- then the downloader will attempt to infer the system triple from `jit.os` and `jit.arch`.
      -- Check the latest release for all available system triples
      --
      -- Beware that if the FFI ABI changes while tracking main then this may result in blink breaking.
      force_system_triple = nil,
    },
  },

  sources = {
    completion = {
      -- Static list of providers to enable, or a function to dynamically enable/disable providers based on the context
      enabled_providers = { 'lsp', 'path', 'snippets', 'buffer' },
      -- Example dynamically picking providers based on the filetype and treesitter node:
      -- enabled_providers = function(ctx)
      --   local node = vim.treesitter.get_node()
      --   if vim.bo.filetype == 'lua' then
      --     return { 'lsp', 'path' }
      --   elseif node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
      --     return { 'buffer' }
      --   else
      --     return { 'lsp', 'path', 'snippets', 'buffer' }
      --   end
      -- end,
    },

    -- Please see https://github.com/Saghen/blink.compat for using `nvim-cmp` sources
    providers = {
      lsp = {
        name = 'LSP',
        module = 'blink.cmp.sources.lsp',

        --- *All* of the providers have the following options available
        --- NOTE: All of these options may be functions to get dynamic behavior
        --- See the type definitions for more information.
        --- Check the enabled_providers config for an example
        enabled = true, -- Whether or not to enable the provider
        transform_items = nil, -- Function to transform the items before they're returned
        should_show_items = true, -- Whether or not to show the items
        max_items = nil, -- Maximum number of items to display in the menu
        min_keyword_length = 0, -- Minimum number of characters in the keyword to trigger the provider
        fallback_for = {}, -- If any of these providers return 0 items, it will fallback to this provider
        score_offset = 0, -- Boost/penalize the score of the items
        override = nil, -- Override the source's functions
      },
      path = {
        name = 'Path',
        module = 'blink.cmp.sources.path',
        score_offset = 3,
        opts = {
          trailing_slash = false,
          label_trailing_slash = true,
          get_cwd = function(context) return vim.fn.expand(('#%d:p:h'):format(context.bufnr)) end,
          show_hidden_files_by_default = false,
        }
      },
      snippets = {
        name = 'Snippets',
        module = 'blink.cmp.sources.snippets',
        score_offset = -3,
        opts = {
          friendly_snippets = true,
          search_paths = { vim.fn.stdpath('config') .. '/snippets' },
          global_snippets = { 'all' },
          extended_filetypes = {},
          ignored_filetypes = {},
          get_filetype = function(context)
            return vim.bo.filetype
          end
        }

        --- Example usage for disabling the snippet provider after pressing trigger characters (i.e. ".")
        -- enabled = function(ctx)
        --   return ctx ~= nil and ctx.trigger.kind == vim.lsp.protocol.CompletionTriggerKind.TriggerCharacter
        -- end,
      },
      buffer = {
        name = 'Buffer',
        module = 'blink.cmp.sources.buffer',
        fallback_for = { 'lsp' },
        opts = {
          -- default to all visible buffers
          get_bufnrs = function()
            return vim
              .iter(vim.api.nvim_list_wins())
              :map(function(win) return vim.api.nvim_win_get_buf(win) end)
              :filter(function(buf) return vim.bo[buf].buftype ~= 'nofile' end)
              :totable()
          end,
        }
      },
    },
  },

  appearance = {
    highlight_ns = vim.api.nvim_create_namespace('blink_cmp'),
    -- Sets the fallback highlight groups to nvim-cmp's highlight groups
    -- Useful for when your theme doesn't support blink.cmp
    -- Will be removed in a future release
    use_nvim_cmp_as_default = false,
    -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = 'mono',
    kind_icons = {
      Text = '󰉿',
      Method = '󰊕',
      Function = '󰊕',
      Constructor = '󰒓',

      Field = '󰜢',
      Variable = '󰆦',
      Property = '󰖷',

      Class = '󱡠',
      Interface = '󱡠',
      Struct = '󱡠',
      Module = '󰅩',

      Unit = '󰪚',
      Value = '󰦨',
      Enum = '󰦨',
      EnumMember = '󰦨',

      Keyword = '󰻾',
      Constant = '󰏿',

      Snippet = '󱄽',
      Color = '󰏘',
      File = '󰈔',
      Reference = '󰬲',
      Folder = '󰉋',
      Event = '󱐋',
      Operator = '󰪚',
      TypeParameter = '󰬛',
    },
  },
  {
    --- @module 'blink.cmp'
    -- --- @type blink.cmp.Draw
    ---@diagnostic disable-next-line: undefined-global
    draw = {
      -- Aligns the keyword you've typed to a component in the menu
      align_to_component = 'label', -- or 'none' to disable
      -- Left and right padding, optionally { left, right } for different padding on each side
      padding = 1,
      -- Gap between columns
      gap = 1,
      -- Use treesitter to highlight the label text of completions from these sources
      treesitter = {},

      -- Components to render, grouped by column
      columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },
      -- for a setup similar to nvim-cmp: https://github.com/Saghen/blink.cmp/pull/245#issuecomment-2463659508
      -- columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },

      -- Definitions for possible components to render. Each component defines:
      --   ellipsis: whether to add an ellipsis when truncating the text
      --   width: control the min, max and fill behavior of the component
      --   text function: will be called for each item
      --   highlight function: will be called only when the line appears on screen
      components = {
        kind_icon = {
          ellipsis = false,
          text = function(ctx) return ctx.kind_icon .. ctx.icon_gap end,
          highlight = function(ctx)
            return require('blink.cmp.completion.windows.render.tailwind').get_hl(
              ctx
            ) or 'BlinkCmpKind' .. ctx.kind
          end,
        },

        kind = {
          ellipsis = false,
          width = { fill = true },
          text = function(ctx) return ctx.kind end,
          highlight = function(ctx)
            return require('blink.cmp.completion.windows.render.tailwind').get_hl(
              ctx
            ) or 'BlinkCmpKind' .. ctx.kind
          end,
        },

        label = {
          width = { fill = true, max = 60 },
          text = function(ctx) return ctx.label .. ctx.label_detail end,
          highlight = function(ctx)
            -- label and label details
            local highlights = {
              {
                0,
                #ctx.label,
                group = ctx.deprecated and 'BlinkCmpLabelDeprecated'
                  or 'BlinkCmpLabel',
              },
            }
            if ctx.label_detail then
              table.insert(highlights, {
                #ctx.label,
                #ctx.label + #ctx.label_detail,
                group = 'BlinkCmpLabelDetail',
              })
            end

            -- characters matched on the label by the fuzzy matcher
            for _, idx in ipairs(ctx.label_matched_indices) do
              table.insert(
                highlights,
                { idx, idx + 1, group = 'BlinkCmpLabelMatch' }
              )
            end

            return highlights
          end,
        },

        label_description = {
          width = { max = 30 },
          text = function(ctx) return ctx.label_description end,
          highlight = 'BlinkCmpLabelDescription',
        },

        source_name = {
          width = { max = 30 },
          -- source_name or source_id are supported
          text = function(ctx) return ctx.source_name end,
          highlight = 'BlinkCmpSource',
        },
      },
    },
  },
}
