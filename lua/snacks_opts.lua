local opts= {
  actions = {
    open_with_window_picker = <function 1>,
    toggle_follow = <function 2>,
    toggle_hidden = <function 3>,
    toggle_ignored = <function 4>,
    toggle_modified = <function 5>,
    toggle_regex = <function 6>
  },
  debug = {
    explorer = false,
    extmarks = false,
    files = false,
    grep = false,
    leaks = false,
    scores = false
  },
  enabled = true,
  finder = "files",
  focus = "input",
  follow = false,
  format = "file",
  formatters = {
    file = {
      filename_first = false,
      filename_only = false,
      icon_width = 2,
      truncate = 40
    },
    selected = {
      show_always = false,
      unselected = true
    },
    severity = {
      icons = true,
      level = false,
      pos = "left"
    },
    text = {}
  },
  hidden = true,
  icons = {
    diagnostics = {
      Error = " ",
      Hint = " ",
      Info = " ",
      Warn = " "
    },
    files = {
      enabled = true
    },
    git = {
      added = "",
      commit = "󰜘 ",
      deleted = "",
      enabled = true,
      ignored = " ",
      modified = "○",
      renamed = "",
      staged = "●",
      unmerged = " ",
      untracked = "?"
    },
    keymaps = {
      nowait = "󰓅 "
    },
    kinds = {
      Array = " ",
      Boolean = "󰨙 ",
      Class = " ",
      Collapsed = " ",
      Color = " ",
      Constant = "󰏿 ",
      Constructor = " ",
      Control = " ",
      Copilot = " ",
      Enum = " ",
      EnumMember = " ",
      Event = " ",
      Field = " ",
      File = " ",
      Folder = " ",
      Function = "󰊕 ",
      Interface = " ",
      Key = " ",
      Keyword = " ",
      Method = "󰊕 ",
      Module = " ",
      Namespace = "󰦮 ",
      Null = " ",
      Number = "󰎠 ",
      Object = " ",
      Operator = " ",
      Package = " ",
      Property = " ",
      Reference = " ",
      Snippet = "󱄽 ",
      String = " ",
      Struct = "󰆼 ",
      Text = " ",
      TypeParameter = " ",
      Unit = " ",
      Unknown = " ",
      Value = " ",
      Variable = "󰀫 "
    },
    tree = {
      last = "└╴",
      middle = "├╴",
      vertical = "│ "
    },
    ui = {
      follow = "f",
      hidden = "h",
      ignored = "i",
      live = "󰐰 ",
      selected = "● ",
      unselected = "○ "
    },
    undo = {
      saved = " "
    }
  },
  ignored = true,
  jump = {
    close = true,
    jumplist = true,
    match = false,
    reuse_win = false,
    tagstack = false
  },
  layout = "telescope",
  layouts = {
    bottom = {
      layout = {
        position = "bottom"
      },
      preset = "ivy"
    },
    default = {
      layout = { { {
            border = "bottom",
            height = 1,
            win = "input"
          }, {
            border = "none",
            win = "list"
          },
          border = "single",
          box = "vertical",
          title = "{title} {live} {flags}"
        }, {
          border = "single",
          title = "{preview}",
          width = 0.6,
          win = "preview"
        },
        box = "horizontal",
        height = 0.8,
        min_width = 120,
        width = 0.8
      }
    },
    dropdown = {
      layout = { {
          border = "rounded",
          height = 0.4,
          title = "{preview}",
          win = "preview"
        }, { {
            border = "bottom",
            height = 1,
            win = "input"
          }, {
            border = "none",
            win = "list"
          },
          border = "rounded",
          box = "vertical",
          title = "{title} {live} {flags}",
          title_pos = "center"
        },
        backdrop = false,
        border = "none",
        box = "vertical",
        height = 0.8,
        min_width = 80,
        row = 1,
        width = 0.4
      }
    },
    ivy = {
      layout = { {
          border = "bottom",
          height = 1,
          win = "input"
        }, { {
            border = "none",
            win = "list"
          }, {
            border = "left",
            title = "{preview}",
            width = 0.6,
            win = "preview"
          },
          box = "horizontal"
        },
        backdrop = false,
        border = "top",
        box = "vertical",
        height = 0.4,
        row = -1,
        title = " {title} {live} {flags}",
        title_pos = "left",
        width = 0
      }
    },
    ivy_split = {
      layout = { {
          border = "bottom",
          height = 1,
          win = "input"
        }, { {
            border = "none",
            win = "list"
          }, {
            border = "left",
            title = "{preview}",
            width = 0.6,
            win = "preview"
          },
          box = "horizontal"
        },
        backdrop = false,
        border = "top",
        box = "vertical",
        height = 0.4,
        position = "bottom",
        title = " {title} {live} {flags}",
        title_pos = "left",
        width = 0
      },
      preview = "main"
    },
    left = <1>{
      layout = { {
          border = "rounded",
          height = 1,
          title = "{title} {live} {flags}",
          title_pos = "center",
          win = "input"
        }, {
          border = "none",
          win = "list"
        }, {
          border = "top",
          height = 0.4,
          title = "{preview}",
          win = "preview"
        },
        backdrop = false,
        border = "none",
        box = "vertical",
        height = 0,
        min_width = 40,
        position = "left",
        width = 40
      },
      preview = "main"
    },
    right = {
      layout = {
        position = "right"
      },
      preset = "sidebar"
    },
    select = {
      layout = { {
          border = "bottom",
          height = 1,
          win = "input"
        }, {
          border = "none",
          win = "list"
        }, {
          border = "top",
          height = 0.4,
          title = "{preview}",
          win = "preview"
        },
        backdrop = false,
        border = "rounded",
        box = "vertical",
        height = 0.4,
        min_height = 3,
        min_width = 80,
        title = "{title}",
        title_pos = "center",
        width = 0.5
      },
      preview = false
    },
    sidebar = <table 1>,
    telescope = {
      layout = { { {
            border = "single",
            title = " Results ",
            title_pos = "center",
            win = "list"
          }, {
            border = "rounded",
            height = 1,
            title = "{title} {live} {flags}",
            title_pos = "center",
            win = "input"
          },
          box = "vertical"
        }, {
          border = "single",
          title = "{preview:Preview}",
          title_pos = "center",
          width = 0.6,
          win = "preview"
        },
        backdrop = false,
        border = "none",
        box = "horizontal",
        height = 0.9,
        width = 0.8
      },
      reverse = false
    },
    top = {
      layout = {
        position = "top"
      },
      preset = "ivy"
    },
    vertical = {
      layout = { {
          border = "bottom",
          height = 1,
          win = "input"
        }, {
          border = "none",
          win = "list"
        }, {
          border = "top",
          height = 0.4,
          title = "{preview}",
          win = "preview"
        },
        backdrop = false,
        border = "rounded",
        box = "vertical",
        height = 0.8,
        min_height = 30,
        min_width = 80,
        title = "{title} {live} {flags}",
        title_pos = "center",
        width = 0.5
      }
    },
    vscode = {
      layout = { {
          border = "rounded",
          height = 1,
          title = "{title} {live} {flags}",
          title_pos = "center",
          win = "input"
        }, {
          border = "hpad",
          win = "list"
        }, {
          border = "rounded",
          title = "{preview}",
          win = "preview"
        },
        backdrop = false,
        border = "none",
        box = "vertical",
        height = 0.4,
        min_width = 80,
        row = 1,
        width = 0.4
      },
      preview = false
    }
  },
  matcher = {
    cwd_bonus = true,
    file_pos = true,
    filename_bonus = true,
    frecency = true,
    fuzzy = true,
    history_bonus = false,
    ignorecase = true,
    smartcase = true,
    sort_empty = true
  },
  previewers = {
    file = {
      max_line_length = 500,
      max_size = 1048576
    },
    git = {
      native = false
    }
  },
  prompt = "  ",
  show_empty = true,
  sort = {
    fields = { "score:desc", "#text", "idx" }
  },
  source = "files",
  sources = {
    autocmds = {
      finder = "vim_autocmds",
      format = "autocmd",
      preview = "preview"
    },
    buffers = {
      current = true,
      finder = "buffers",
      format = "buffer",
      hidden = false,
      sort_lastused = true,
      unloaded = true,
      win = {
        input = {
          keys = {
            ["<C-X>"] = { "bufdelete",
              mode = { "n", "i" }
            },
            dd = "bufdelete"
          }
        },
        list = {
          keys = {
            dd = "bufdelete"
          }
        }
      }
    },
    cliphist = {
      confirm = { "copy", "close" },
      finder = "system_cliphist",
      format = "text",
      preview = "preview"
    },
    colorschemes = {
      confirm = <function 7>,
      finder = "vim_colorschemes",
      format = "text",
      preset = "vertical",
      preview = "colorscheme"
    },
    command_history = {
      confirm = "cmd",
      finder = "vim_history",
      format = "text",
      formatters = {
        text = {
          ft = "vim"
        }
      },
      layout = {
        preset = "vscode"
      },
      name = "cmd",
      preview = "none"
    },
    commands = {
      confirm = "cmd",
      finder = "vim_commands",
      format = "command",
      preview = "preview"
    },
    diagnostics = {
      filter = {
        cwd = true
      },
      finder = "diagnostics",
      format = "diagnostic",
      matcher = {
        sort_empty = true
      },
      sort = {
        fields = { "is_current", "is_cwd", "severity", "file", "lnum" }
      }
    },
    diagnostics_buffer = {
      filter = {
        buf = true
      },
      finder = "diagnostics",
      format = "diagnostic",
      matcher = {
        sort_empty = true
      },
      sort = {
        fields = { "severity", "file", "lnum" }
      }
    },
    explorer = {
      auto_close = false,
      config = <function 8>,
      diagnostics = true,
      diagnostics_open = false,
      finder = "explorer",
      focus = "list",
      follow_file = true,
      formatters = {
        file = {
          filename_only = true
        },
        severity = {
          pos = "right"
        }
      },
      git_status = true,
      git_status_open = false,
      git_untracked = true,
      jump = {
        close = false
      },
      layout = {
        preset = "sidebar",
        preview = false
      },
      matcher = {
        fuzzy = false,
        sort_empty = false
      },
      sort = {
        fields = { "sort" }
      },
      supports_live = true,
      tree = true,
      watch = true,
      win = {
        list = {
          keys = {
            ["."] = "explorer_focus",
            ["<BS>"] = "explorer_up",
            ["<C-C>"] = "tcd",
            ["<C-F>"] = "picker_grep",
            ["<C-T>"] = "terminal",
            H = "toggle_hidden",
            I = "toggle_ignored",
            P = "toggle_preview",
            Z = "explorer_close_all",
            ["[d"] = "explorer_diagnostic_prev",
            ["[e"] = "explorer_error_prev",
            ["[g"] = "explorer_git_prev",
            ["[w"] = "explorer_warn_prev",
            ["]d"] = "explorer_diagnostic_next",
            ["]e"] = "explorer_error_next",
            ["]g"] = "explorer_git_next",
            ["]w"] = "explorer_warn_next",
            a = "explorer_add",
            c = "explorer_copy",
            d = "explorer_del",
            h = "explorer_close",
            l = "confirm",
            m = "explorer_move",
            o = "explorer_open",
            r = "explorer_rename",
            u = "explorer_update",
            y = "explorer_yank"
          }
        }
      }
    },
    files = {
      finder = "files",
      follow = false,
      format = "file",
      hidden = true,
      ignored = true,
      show_empty = true,
      supports_live = true
    },
    git_branches = {
      confirm = "git_checkout",
      finder = "git_branches",
      format = "git_branch",
      on_show = <function 9>,
      preview = "git_log",
      win = {
        input = {
          keys = {
            ["<C-A>"] = { "git_branch_add",
              mode = { "n", "i" }
            },
            ["<C-X>"] = { "git_branch_del",
              mode = { "n", "i" }
            }
          }
        }
      }
    },
    git_diff = {
      finder = "git_diff",
      format = "file",
      preview = "preview"
    },
    git_files = {
      finder = "git_files",
      format = "file",
      show_empty = true,
      submodules = false,
      untracked = false
    },
    git_grep = {
      finder = "git_grep",
      format = "file",
      live = true,
      need_search = true,
      show_empty = true,
      submodules = false,
      supports_live = true,
      untracked = false
    },
    git_log = {
      confirm = "git_checkout",
      finder = "git_log",
      format = "git_log",
      preview = "git_show"
    },
    git_log_file = {
      confirm = "git_checkout",
      current_file = true,
      finder = "git_log",
      follow = true,
      format = "git_log",
      preview = "git_show"
    },
    git_log_line = {
      confirm = "git_checkout",
      current_line = true,
      finder = "git_log",
      follow = true,
      format = "git_log",
      preview = "git_show"
    },
    git_stash = {
      confirm = "git_stash_apply",
      finder = "git_stash",
      format = "git_stash",
      preview = "git_stash"
    },
    git_status = {
      finder = "git_status",
      format = "git_status",
      preview = "git_status",
      win = {
        input = {
          keys = {
            ["<Tab>"] = { "git_stage",
              mode = { "n", "i" }
            }
          }
        }
      }
    },
    grep = {
      finder = "grep",
      format = "file",
      live = true,
      regex = true,
      show_empty = true,
      supports_live = true
    },
    grep_buffers = {
      buffers = true,
      finder = "grep",
      format = "file",
      live = true,
      need_search = false,
      supports_live = true
    },
    grep_word = {
      finder = "grep",
      format = "file",
      live = false,
      search = <function 10>,
      supports_live = true
    },
    help = {
      confirm = "help",
      finder = "help",
      format = "text",
      previewers = {
        file = {
          ft = "help"
        }
      },
      win = {
        preview = {
          minimal = true
        }
      }
    },
    highlights = {
      finder = "vim_highlights",
      format = "hl",
      preview = "preview"
    },
    icons = {
      confirm = "put",
      finder = "icons",
      format = "icon",
      icon_sources = { "nerd_fonts", "emoji" },
      layout = {
        preset = "vscode"
      }
    },
    jumps = {
      finder = "vim_jumps",
      format = "file"
    },
    keymaps = {
      actions = {
        toggle_buffer = <function 11>,
        toggle_global = <function 12>
      },
      confirm = <function 13>,
      finder = "vim_keymaps",
      format = "keymap",
      global = true,
      ["local"] = true,
      modes = { "n", "v", "x", "s", "o", "i", "c", "t" },
      plugs = false,
      preview = "preview",
      win = {
        input = {
          keys = {
            ["<M-b>"] = { "toggle_buffer",
              desc = "Toggle Buffer Keymaps",
              mode = { "n", "i" }
            },
            ["<M-g>"] = { "toggle_global",
              desc = "Toggle Global Keymaps",
              mode = { "n", "i" }
            }
          }
        }
      }
    },
    lazy = {
      finder = "lazy_spec",
      pattern = "'"
    },
    lines = {
      finder = "lines",
      format = "lines",
      jump = {
        match = true
      },
      layout = {
        preset = "ivy",
        preview = "main"
      },
      main = {
        current = true
      },
      on_show = <function 14>,
      sort = {
        fields = { "score:desc", "idx" }
      }
    },
    loclist = {
      finder = "qf",
      format = "file",
      qf_win = 0
    },
    lsp_declarations = {
      auto_confirm = true,
      finder = "lsp_declarations",
      format = "file",
      include_current = false,
      jump = {
        reuse_win = true,
        tagstack = true
      }
    },
    lsp_definitions = {
      auto_confirm = true,
      finder = "lsp_definitions",
      format = "file",
      include_current = false,
      jump = {
        reuse_win = true,
        tagstack = true
      }
    },
    lsp_implementations = {
      auto_confirm = true,
      finder = "lsp_implementations",
      format = "file",
      include_current = false,
      jump = {
        reuse_win = true,
        tagstack = true
      }
    },
    lsp_references = {
      auto_confirm = true,
      finder = "lsp_references",
      format = "file",
      include_current = false,
      include_declaration = true,
      jump = {
        reuse_win = true,
        tagstack = true
      }
    },
    lsp_symbols = {
      filter = <2>{
        default = { "Class", "Constructor", "Enum", "Field", "Function", "Interface", "Method", "Module", "Namespace", "Package", "Property", "Struct", "Trait" },
        help = true,
        lua = { "Class", "Constructor", "Enum", "Field", "Function", "Interface", "Method", "Module", "Namespace", "Property", "Struct", "Trait" },
        markdown = true
      },
      finder = "lsp_symbols",
      format = "lsp_symbol",
      tree = true
    },
    lsp_type_definitions = {
      auto_confirm = true,
      finder = "lsp_type_definitions",
      format = "file",
      include_current = false,
      jump = {
        reuse_win = true,
        tagstack = true
      }
    },
    lsp_workspace_symbols = {
      filter = <table 2>,
      finder = "lsp_symbols",
      format = "lsp_symbol",
      live = true,
      supports_live = true,
      tree = false,
      workspace = true
    },
    man = {
      confirm = <function 15>,
      finder = "system_man",
      format = "man",
      preview = "man"
    },
    marks = {
      finder = "vim_marks",
      format = "file",
      global = true,
      ["local"] = true
    },
    notifications = {
      finder = "snacks_notifier",
      format = "notification",
      formatters = {
        severity = {
          level = true
        }
      },
      preview = "preview"
    },
    picker_actions = {
      finder = "meta_actions",
      format = "text"
    },
    picker_format = {
      finder = "meta_format",
      format = "text"
    },
    picker_layouts = {
      finder = "meta_layouts",
      format = "text",
      on_change = <function 16>
    },
    picker_preview = {
      finder = "meta_preview",
      format = "text"
    },
    pickers = {
      confirm = <function 17>,
      finder = "meta_pickers",
      format = "text"
    },
    projects = {
      confirm = "load_session",
      dev = { "~/dev", "~/projects" },
      finder = "recent_projects",
      format = "file",
      matcher = {
        cwd_bonus = false,
        frecency = true,
        sort_empty = true
      },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "package.json", "Makefile" },
      recent = true,
      sort = {
        fields = { "score:desc", "idx" }
      },
      win = {
        input = {
          keys = {
            ["<C-E>"] = { { "tcd", "picker_explorer" },
              mode = { "n", "i" }
            },
            ["<C-F>"] = { { "tcd", "picker_files" },
              mode = { "n", "i" }
            },
            ["<C-G>"] = { { "tcd", "picker_grep" },
              mode = { "n", "i" }
            },
            ["<C-R>"] = { { "tcd", "picker_recent" },
              mode = { "n", "i" }
            },
            ["<C-T>"] = { <function 18>,
              mode = { "n", "i" }
            },
            ["<C-W>"] = { { "tcd" },
              mode = { "n", "i" }
            }
          }
        },
        preview = {
          minimal = true
        }
      }
    },
    qflist = {
      finder = "qf",
      format = "file"
    },
    recent = {
      filter = {
        paths = {
          ["/home/razak/.cache/rvim"] = false,
          ["/home/razak/.local/share/rvim"] = false,
          ["/home/razak/.local/state/rvim"] = false
        }
      },
      finder = "recent_files",
      format = "file"
    },
    registers = {
      confirm = { "copy", "close" },
      finder = "vim_registers",
      format = "register",
      preview = "preview"
    },
    resume = {},
    search_history = {
      confirm = "search",
      finder = "vim_history",
      format = "text",
      formatters = {
        text = {
          ft = "regex"
        }
      },
      layout = {
        preset = "vscode"
      },
      name = "search",
      preview = "none"
    },
    select = {
      items = {},
      layout = {
        preset = "select"
      },
      main = {
        current = true
      }
    },
    smart = {
      format = "file",
      matcher = {
        cwd_bonus = true,
        frecency = true,
        sort_empty = true
      },
      multi = { "buffers", "recent", "files" },
      transform = "unique_file"
    },
    spelling = {
      confirm = "item_action",
      finder = "vim_spelling",
      format = "text",
      layout = {
        preset = "vscode"
      }
    },
    treesitter = {
      filter = {
        default = { "Class", "Enum", "Field", "Function", "Method", "Module", "Namespace", "Struct", "Trait" },
        help = true,
        markdown = true
      },
      finder = "treesitter_symbols",
      format = "lsp_symbol"
    },
    undo = {
      actions = {
        yank_add = {
          action = "yank",
          field = "added_lines"
        },
        yank_del = {
          action = "yank",
          field = "removed_lines"
        }
      },
      confirm = "item_action",
      diff = {
        ctxlen = 4,
        ignore_cr_at_eol = true,
        ignore_whitespace_change_at_eol = true,
        indent_heuristic = true
      },
      finder = "vim_undo",
      format = "undo",
      icons = {
        tree = {
          last = "┌╴"
        }
      },
      preview = "preview",
      win = {
        input = {
          keys = {
            ["<C-S-Y>"] = { "yank_del",
              mode = { "n", "i" }
            },
            ["<C-Y>"] = { "yank_add",
              mode = { "n", "i" }
            }
          }
        },
        preview = {
          wo = {
            number = false,
            relativenumber = false,
            signcolumn = "no"
          }
        }
      }
    },
    zoxide = {
      confirm = "load_session",
      finder = "files_zoxide",
      format = "file",
      win = {
        preview = {
          minimal = true
        }
      }
    },
    <metatable> = {
      __newindex = <function 19>
    }
  },
  supports_live = true,
  toggles = {
    follow = "f",
    hidden = "h",
    ignored = "i",
    modified = "m",
    regex = {
      icon = "R",
      value = false
    }
  },
  ui_select = true,
  win = {
    input = {
      actions = <3>{
        <metatable> = {
          __index = <function 20>
        }
      },
      b = {
        minipairs_disable = true
      },
      keys = {
        ["/"] = "toggle_focus",
        ["<C-A>"] = { "select_all",
          mode = { "n", "i" }
        },
        ["<C-B>"] = { "preview_scroll_up",
          mode = { "i", "n" }
        },
        ["<C-C>"] = { "close",
          mode = "i"
        },
        ["<C-D>"] = { "list_scroll_down",
          mode = { "i", "n" }
        },
        ["<C-Down>"] = { "history_forward",
          mode = { "i", "n" }
        },
        ["<C-F>"] = { "preview_scroll_down",
          mode = { "i", "n" }
        },
        ["<C-G>"] = { "toggle_live",
          mode = { "i", "n" }
        },
        ["<C-H>"] = { "toggle_ignored",
          mode = { "i", "n" }
        },
        ["<C-J>"] = { "list_down",
          mode = { "i", "n" }
        },
        ["<C-K>"] = { "list_up",
          mode = { "i", "n" }
        },
        ["<C-N>"] = { "list_down",
          mode = { "i", "n" }
        },
        ["<C-P>"] = { "list_up",
          mode = { "i", "n" }
        },
        ["<C-Q>"] = { "qflist",
          mode = { "i", "n" }
        },
        ["<C-S>"] = { "edit_split",
          mode = { "i", "n" }
        },
        ["<C-U>"] = { "list_scroll_up",
          mode = { "i", "n" }
        },
        ["<C-Up>"] = { "history_back",
          mode = { "i", "n" }
        },
        ["<C-V>"] = { "edit_vsplit",
          mode = { "i", "n" }
        },
        ["<C-W>"] = { "<c-s-w>",
          desc = "delete word",
          expr = true,
          mode = { "i" }
        },
        ["<C-Z><C-H>"] = { "layout_left",
          mode = { "i", "n" }
        },
        ["<C-Z><C-J>"] = { "layout_bottom",
          mode = { "i", "n" }
        },
        ["<C-Z><C-K>"] = { "layout_top",
          mode = { "i", "n" }
        },
        ["<C-Z><C-L>"] = { "layout_right",
          mode = { "i", "n" }
        },
        ["<C-Z>h"] = { "layout_left",
          mode = { "i", "n" }
        },
        ["<C-Z>j"] = { "layout_bottom",
          mode = { "i", "n" }
        },
        ["<C-Z>k"] = { "layout_top",
          mode = { "i", "n" }
        },
        ["<C-Z>l"] = { "layout_right",
          mode = { "i", "n" }
        },
        ["<CR>"] = { "confirm",
          mode = { "n", "i" }
        },
        ["<Down>"] = { "list_down",
          mode = { "i", "n" }
        },
        ["<Esc>"] = { "close",
          mode = { "n", "i" }
        },
        ["<M-CR>"] = { "open_with_window_picker",
          mode = { "n", "i" }
        },
        ["<M-d>"] = { "preview_scroll_down",
          mode = { "i", "n" }
        },
        ["<M-f>"] = { "toggle_follow",
          mode = { "i", "n" }
        },
        ["<M-h>"] = { "preview_scroll_left",
          mode = { "i", "n" }
        },
        ["<M-i>"] = { "toggle_ignored",
          mode = { "i", "n" }
        },
        ["<M-l>"] = { "preview_scroll_right",
          mode = { "i", "n" }
        },
        ["<M-m>"] = { "toggle_maximize",
          mode = { "i", "n" }
        },
        ["<M-p>"] = { "toggle_preview",
          mode = { "i", "n" }
        },
        ["<M-u>"] = { "preview_scroll_up",
          mode = { "i", "n" }
        },
        ["<M-w>"] = { "cycle_win",
          mode = { "i", "n" }
        },
        ["<S-CR>"] = { { "pick_win", "jump" },
          mode = { "n", "i" }
        },
        ["<S-Tab>"] = { "select_and_prev",
          mode = { "i", "n" }
        },
        ["<Tab>"] = { "select_and_next",
          mode = { "i", "n" }
        },
        ["<Up>"] = { "list_up",
          mode = { "i", "n" }
        },
        ["?"] = "toggle_help_input",
        G = "list_bottom",
        gg = "list_top",
        j = "list_down",
        k = "list_up",
        q = "close"
      }
    },
    list = {
      actions = <table 3>,
      keys = {
        ["/"] = "toggle_focus",
        ["<2-LeftMouse>"] = "confirm",
        ["<C-A>"] = "select_all",
        ["<C-B>"] = "preview_scroll_up",
        ["<C-D>"] = "list_scroll_down",
        ["<C-F>"] = "preview_scroll_down",
        ["<C-J>"] = "list_down",
        ["<C-K>"] = "list_up",
        ["<C-N>"] = "list_down",
        ["<C-P>"] = "list_up",
        ["<C-S>"] = "edit_split",
        ["<C-U>"] = "list_scroll_up",
        ["<C-V>"] = "edit_vsplit",
        ["<C-Z><C-H>"] = { "layout_left",
          mode = { "i", "n" }
        },
        ["<C-Z><C-J>"] = { "layout_bottom",
          mode = { "i", "n" }
        },
        ["<C-Z><C-K>"] = { "layout_top",
          mode = { "i", "n" }
        },
        ["<C-Z><C-L>"] = { "layout_right",
          mode = { "i", "n" }
        },
        ["<C-Z>h"] = { "layout_left",
          mode = { "i", "n" }
        },
        ["<C-Z>j"] = { "layout_bottom",
          mode = { "i", "n" }
        },
        ["<C-Z>k"] = { "layout_top",
          mode = { "i", "n" }
        },
        ["<C-Z>l"] = { "layout_right",
          mode = { "i", "n" }
        },
        ["<CR>"] = "confirm",
        ["<Down>"] = "list_down",
        ["<Esc>"] = "close",
        ["<M-d>"] = "inspect",
        ["<M-f>"] = "toggle_follow",
        ["<M-h>"] = "toggle_hidden",
        ["<M-i>"] = "toggle_ignored",
        ["<M-m>"] = "toggle_maximize",
        ["<M-p>"] = "toggle_preview",
        ["<M-w>"] = "cycle_win",
        ["<S-CR>"] = { { "pick_win", "jump" } },
        ["<S-Tab>"] = { "select_and_prev",
          mode = { "n", "x" }
        },
        ["<Tab>"] = { "select_and_next",
          mode = { "n", "x" }
        },
        ["<Up>"] = "list_up",
        ["?"] = "toggle_help_list",
        G = "list_bottom",
        gg = "list_top",
        i = "focus_input",
        j = "list_down",
        k = "list_up",
        q = "close",
        zb = "list_scroll_bottom",
        zt = "list_scroll_top",
        zz = "list_scroll_center"
      },
      wo = {
        concealcursor = "nvc",
        conceallevel = 2
      }
    },
    preview = {
      actions = <table 3>,
      keys = {
        ["<Esc>"] = "close",
        ["<M-w>"] = "cycle_win",
        ["<ScrollWheelDown>"] = "list_scroll_wheel_down",
        ["<ScrollWheelUp>"] = "list_scroll_wheel_up",
        i = "focus_input",
        q = "close"
      }
    }
  }
}
