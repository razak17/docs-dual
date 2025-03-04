local name = {
  cache = {
    entries = {},
    <metatable> = {
      __index = <2>{
        clear = <function 1>,
        ensure = <function 2>,
        get = <function 3>,
        key = <function 4>,
        new = <function 5>,
        set = <function 6>
      }
    }
  },
  completion_item = <3>{
    dup = 0,
    label = "def"
  },
  confirmed = false,
  context = <4>{
    aborted = true,
    bufnr = 2,
    cache = {
      entries = {
        ["get_offset:@\\(\\k\\| \\|:\\)*:de"] = 3,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\):de"] = 1,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\):de"] = 1,
        ["get_offset:\\%([[:space:]\"'`]\\|^\\)\\zs:[[:alnum:]_\\-\\+]*:\\?:de"] = 3,
        ["get_offset:\\%([^/\\\\:\\*?<>'\"`\\|]\\)*:de"] = 1,
        ["get_offset:\\%([^[:alnum:][:blank:]]\\|\\w\\+\\):de"] = 1,
        ["get_offset:^$:de"] = 3,
        ["get_offset:nf\\-\\S*:de"] = 3
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    cursor = {
      character = 2,
      col = 3,
      line = 2,
      row = 3
    },
    cursor_after_line = "",
    cursor_before_line = "de",
    cursor_line = "de",
    filetype = "python",
    id = 16,
    option = {
      reason = "auto"
    },
    prev_context = {
      aborted = true,
      bufnr = 2,
      cursor = {
        character = 3,
        col = 4,
        line = 2,
        row = 3
      },
      cursor_after_line = "",
      cursor_before_line = "def",
      cursor_line = "def",
      filetype = "python",
      id = 15,
      option = {
        reason = "auto"
      },
      time = 348151403
    },
    time = 348152759,
    <metatable> = {
      __index = {
        abort = <function 7>,
        changed = <function 8>,
        clone = <function 9>,
        empty = <function 10>,
        get_offset = <function 11>,
        get_reason = <function 12>,
        new = <function 13>
      }
    }
  },
  exact = false,
  filter_text = "def",
  id = 271,
  insert_range = {
    ["end"] = <5>{
      character = 2,
      line = 2
    },
    start = {
      character = 0,
      line = 2
    }
  },
  match_cache = {
    entries = {
      ["de:0:0:1:0:1:1"] = {
        _word = "def",
        matches = <6>{ {
            fuzzy = false,
            index = 1,
            input_match_end = 2,
            input_match_start = 1,
            no_symbol_match = false,
            strict_ratio = 1,
            word_match_end = 2,
            word_match_start = 1
          } },
        score = 21.6
      }
    },
    <metatable> = {
      __index = <table 2>
    }
  },
  match_view_args_ret = {
    input = "de",
    matches = <table 6>,
    option = {
      disallow_fuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = true,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
      synonyms = { "def", "def" }
    },
    word = "def"
  },
  matches = <table 6>,
  offset = 1,
  replace_range = {
    ["end"] = <7>{
      character = 2,
      line = 2
    },
    start = {
      character = 0,
      line = 2
    }
  },
  resolved_callbacks = {},
  resolving = false,
  score = 25.6,
  source = <8>{
    cache = {
      entries = {},
      <metatable> = {
        __index = <table 2>
      }
    },
    complete_dedup = <function 14>,
    completion_context = {
      triggerKind = 1
    },
    context = <table 4>,
    default_insert_range = <9>{
      ["end"] = <table 5>,
      start = {
        character = 0,
        line = 2
      }
    },
    default_replace_range = <10>{
      ["end"] = <table 7>,
      start = {
        character = 1,
        line = 2
      }
    },
    entries = { {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <11>{
          dup = 0,
          label = "case"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "case",
        id = 230,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "case",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "case",
        <metatable> = <12>{
          __index = <table 12>,
          _get_insert_text = <function 15>,
          _get_offset = <function 16>,
          _get_overwrite = <function 17>,
          _get_view = <function 18>,
          _get_vim_item = <function 19>,
          _get_word = <function 20>,
          _match = <function 21>,
          _set_completion_item = <function 22>,
          convert_range_encoding = <function 23>,
          execute = <function 24>,
          fill_defaults = <function 25>,
          get_commit_characters = <function 26>,
          get_completion_item = <function 27>,
          get_documentation = <function 28>,
          get_filter_text = <function 29>,
          get_insert_range = <function 30>,
          get_insert_text = <function 31>,
          get_kind = <function 32>,
          get_offset = <function 33>,
          get_overwrite = <function 34>,
          get_replace_range = <function 35>,
          get_view = <function 36>,
          get_view_matches = <function 37>,
          get_vim_item = <function 38>,
          get_word = <function 39>,
          is_deprecated = <function 40>,
          is_invalid = <function 41>,
          match = <function 42>,
          new = <function 43>,
          resolve = <function 44>
        }
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <13>{
          dup = 0,
          label = "test_empty_array"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_empty_array",
        id = 231,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_empty_array",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_empty_array",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <14>{
          dup = 0,
          label = "assertEqual"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "assertEqual",
        id = 232,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "assertEqual",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "assertEqual",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <15>{
          dup = 0,
          label = "self"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "self",
        id = 233,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "self",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "self",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <16>{
          dup = 0,
          label = "test_single_element_found"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_single_element_found",
        id = 234,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_single_element_found",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_single_element_found",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <17>{
          dup = 0,
          label = "else"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "else",
        id = 235,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "else",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "else",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <18>{
          dup = 0,
          label = "elif"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "elif",
        id = 236,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "elif",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "elif",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <19>{
          dup = 0,
          label = "test_single_element_not_found"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_single_element_not_found",
        id = 237,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_single_element_not_found",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_single_element_not_found",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <20>{
          dup = 0,
          label = "test_target_at_beginning"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_target_at_beginning",
        id = 238,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_target_at_beginning",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_target_at_beginning",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <21>{
          dup = 0,
          label = "__main__"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "__main__",
        id = 239,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "__main__",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "__main__",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <22>{
          dup = 0,
          label = "binary_search"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "binary_search",
        id = 240,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "binary_search",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "binary_search",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <23>{
          dup = 0,
          label = "the"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "the",
        id = 241,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "the",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "the",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <24>{
          dup = 0,
          label = "function"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "function",
        id = 242,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "function",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "function",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <25>{
          dup = 0,
          label = "test_target_at_middle"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_target_at_middle",
        id = 243,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_target_at_middle",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_target_at_middle",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <26>{
          dup = 0,
          label = "Run"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "Run",
        id = 244,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "Run",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "Run",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <27>{
          dup = 0,
          label = "main"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "main",
        id = 245,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "main",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "main",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <28>{
          dup = 0,
          label = "__name__"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "__name__",
        id = 246,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "__name__",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "__name__",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <29>{
          dup = 0,
          label = "test_array_with_negative_numbers"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_array_with_negative_numbers",
        id = 247,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_array_with_negative_numbers",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_array_with_negative_numbers",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <30>{
          dup = 0,
          label = "class"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "class",
        id = 248,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "class",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "class",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <31>{
          dup = 0,
          label = "test_array_with_duplicates"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_array_with_duplicates",
        id = 249,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_array_with_duplicates",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_array_with_duplicates",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <32>{
          dup = 0,
          label = "mid"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "mid",
        id = 250,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "mid",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "mid",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <33>{
          dup = 0,
          label = "return"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "return",
        id = 251,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "return",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "return",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <34>{
          dup = 0,
          label = "print"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "print",
        id = 252,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "print",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "print",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <35>{
          dup = 0,
          label = "assert"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "assert",
        id = 253,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "assert",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "assert",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <36>{
          dup = 0,
          label = "test_target_at_end"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_target_at_end",
        id = 254,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_target_at_end",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_target_at_end",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <37>{
          dup = 0,
          label = "len"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "len",
        id = 255,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "len",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "len",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <38>{
          dup = 0,
          label = "int"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "int",
        id = 256,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "int",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "int",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <39>{
          dup = 0,
          label = "failed"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "failed",
        id = 257,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "failed",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "failed",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <40>{
          dup = 0,
          label = "right"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "right",
        id = 258,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "right",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "right",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <41>{
          dup = 0,
          label = "test"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test",
        id = 259,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <42>{
          dup = 0,
          label = "left"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "left",
        id = 260,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "left",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "left",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <43>{
          dup = 0,
          label = "import"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "import",
        id = 261,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "import",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "import",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <44>{
          dup = 0,
          label = "unittest"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "unittest",
        id = 262,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "unittest",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "unittest",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <45>{
          dup = 0,
          label = "All"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "All",
        id = 263,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "All",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "All",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <46>{
          dup = 0,
          label = "list"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "list",
        id = 264,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "list",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "list",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <47>{
          dup = 0,
          label = "test_target_not_in_array"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_target_not_in_array",
        id = 265,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_target_not_in_array",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_target_not_in_array",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <48>{
          dup = 0,
          label = "while"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "while",
        id = 266,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "while",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "while",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <49>{
          dup = 0,
          label = "cases"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "cases",
        id = 267,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "cases",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "cases",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <50>{
          dup = 0,
          label = "arr"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "arr",
        id = 268,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "arr",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "arr",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <51>{
          dup = 0,
          label = "passed"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "passed",
        id = 269,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "passed",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "passed",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <52>{
          dup = 0,
          label = "test_binary_search"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "test_binary_search",
        id = 270,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "test_binary_search",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "test_binary_search",
        <metatable> = <table 12>
      }, <table 1>, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <53>{
          dup = 0,
          label = "TestBinarySearch"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "TestBinarySearch",
        id = 272,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "TestBinarySearch",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "TestBinarySearch",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <54>{
          dup = 0,
          label = "target"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "target",
        id = 273,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "target",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "target",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <55>{
          dup = 0,
          label = "Test"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "Test",
        id = 274,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "Test",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "Test",
        <metatable> = <table 12>
      }, {
        cache = {
          entries = {},
          <metatable> = {
            __index = <table 2>
          }
        },
        completion_item = <56>{
          dup = 0,
          label = "TestCase"
        },
        confirmed = false,
        context = <table 4>,
        exact = false,
        filter_text = "TestCase",
        id = 275,
        insert_range = {
          ["end"] = <table 5>,
          start = {
            character = 0,
            line = 2
          }
        },
        match_cache = {
          entries = {
            ["de:0:0:1:0:1:1"] = {
              _word = "TestCase",
              matches = {},
              score = 0
            }
          },
          <metatable> = {
            __index = <table 2>
          }
        },
        matches = {},
        offset = 1,
        replace_range = {
          ["end"] = <table 7>,
          start = {
            character = 0,
            line = 2
          }
        },
        resolved_callbacks = {},
        resolving = false,
        score = 0,
        source = <table 8>,
        source_insert_range = <table 9>,
        source_offset = 1,
        source_replace_range = <table 10>,
        word = "TestCase",
        <metatable> = <table 12>
      } },
    id = 2,
    incomplete = true,
    is_triggered_by_symbol = false,
    name = "buffer",
    offset = 1,
    position_encoding = "utf-16",
    request_offset = 1,
    response = {
      isIncomplete = true,
      items = { <table 11>, <table 13>, <table 14>, <table 15>, <table 16>, <table 17>, <table 18>, <table 19>, <table 20>, <table 21>, <table 22>, <table 23>, <table 24>, <table 25>, <table 26>, <table 27>, <table 28>, <table 29>, <table 30>, <table 31>, <table 32>, <table 33>, <table 34>, <table 35>, <table 36>, <table 37>, <table 38>, <table 39>, <table 40>, <table 41>, <table 42>, <table 43>, <table 44>, <table 45>, <table 46>, <table 47>, <table 48>, <table 49>, <table 50>, <table 51>, <table 52>, <table 3>, <table 53>, <table 54>, <table 55>, <table 56> }
    },
    revision = 2,
    source = {
      buffers = {
        [2] = {
          bufnr = 2,
          closed = false,
          last_edit_first_line = 0,
          last_edit_last_line = 0,
          lines_count = 86,
          lines_words = { { "import", "unittest" }, {}, {}, {}, { "def", "binary_search", "arr", "list", "target", "int" }, { "left", "right", "len", "arr" }, {}, { "while", "left", "right" }, { "mid", "left", "right" }, {}, { "arr", "mid", "target" }, { "return", "mid" }, { "elif", "arr", "mid", "target" }, { "left", "mid" }, { "else" }, { "right", "mid" }, {}, { "return" }, {}, {}, { "def", "test_binary_search" }, { "arr" }, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "arr" }, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "arr" }, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "target" }, { "assert", "binary_search", "arr", "target", "Test", "case", "failed" }, {}, { "print", "All", "test", "cases", "passed" }, {}, {}, { "class", "TestBinarySearch", "unittest", "TestCase" }, { "def", "test_empty_array", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_single_element_found", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_single_element_not_found", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_target_at_beginning", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_target_at_middle", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_target_at_end", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_target_not_in_array", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_array_with_duplicates", "self" }, { "self", "assertEqual", "binary_search" }, {}, { "def", "test_array_with_negative_numbers", "self" }, { "self", "assertEqual", "binary_search" }, {}, {}, { "__name__", "__main__" }, { "unittest", "main" }, {}, {}, { "Run", "the", "test", "function" }, { "test_binary_search" } },
          on_close_cb = <function 45>,
          opts = {
            get_bufnrs = <function 46>,
            indexing_batch_size = 1000,
            indexing_interval = 100,
            keyword_length = 3,
            keyword_pattern = "\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\)",
            max_indexed_line_length = 40960
          },
          regex = <userdata 1>,
          timer = {
            handle = <userdata 2>,
            <metatable> = {
              __index = {
                close = <function 47>,
                is_active = <function 48>,
                new = <function 49>,
                start = <function 50>,
                stop = <function 51>
              }
            }
          },
          timer_current_line = 86,
          unique_words_curr_line = {},
          unique_words_curr_line_dirty = false,
          unique_words_other_lines = {
            All = true,
            Run = true,
            Test = true,
            TestBinarySearch = true,
            TestCase = true,
            __main__ = true,
            __name__ = true,
            arr = true,
            assert = true,
            assertEqual = true,
            binary_search = true,
            case = true,
            cases = true,
            class = true,
            def = true,
            elif = true,
            ["else"] = true,
            failed = true,
            ["function"] = true,
            import = true,
            int = true,
            left = true,
            len = true,
            list = true,
            main = true,
            mid = true,
            passed = true,
            print = true,
            ["return"] = true,
            right = true,
            self = true,
            target = true,
            test = true,
            test_array_with_duplicates = true,
            test_array_with_negative_numbers = true,
            test_binary_search = true,
            test_empty_array = true,
            test_single_element_found = true,
            test_single_element_not_found = true,
            test_target_at_beginning = true,
            test_target_at_end = true,
            test_target_at_middle = true,
            test_target_not_in_array = true,
            the = true,
            unittest = true,
            ["while"] = true
          },
          unique_words_other_lines_dirty = false,
          words_distances = {},
          words_distances_dirty = true,
          words_distances_last_cursor_row = 0,
          <metatable> = {
            __index = {
              GET_LINES_CHUNK_SIZE = 1000,
              close = <function 52>,
              get_words = <function 53>,
              get_words_distances = <function 54>,
              index_line = <function 55>,
              index_range = <function 56>,
              mark_all_lines_dirty = <function 57>,
              new = <function 58>,
              rebuild_unique_words = <function 59>,
              safe_buf_call = <function 60>,
              start_indexing_timer = <function 61>,
              stop_indexing_timer = <function 62>,
              watch = <function 63>
            }
          }
        }
      },
      <metatable> = {
        __index = {
          _get_buffers = <function 64>,
          _get_distance_from_entry = <function 65>,
          _validate_options = <function 66>,
          compare_locality = <function 67>,
          complete = <function 68>,
          get_keyword_pattern = <function 69>,
          new = <function 70>
        }
      }
    },
    status = 3,
    <metatable> = {
      __index = {
        SourceStatus = {
          COMPLETED = 3,
          FETCHING = 2,
          WAITING = 1
        },
        _get_default_insert_range = <function 71>,
        _get_default_replace_range = <function 72>,
        complete = <function 73>,
        enabled = <function 74>,
        execute = <function 75>,
        get_debug_name = <function 76>,
        get_default_insert_range = <function 77>,
        get_default_replae_range = <function 78>,
        get_entries = <function 79>,
        get_entry_filter = <function 80>,
        get_fetching_time = <function 81>,
        get_keyword_length = <function 82>,
        get_keyword_pattern = <function 83>,
        get_matching_config = <function 84>,
        get_position_encoding_kind = <function 85>,
        get_source_config = <function 86>,
        get_trigger_characters = <function 87>,
        is_available = <function 88>,
        new = <function 89>,
        reset = <function 90>,
        resolve = <function 91>
      }
    }
  },
  source_insert_range = <table 9>,
  source_offset = 1,
  source_replace_range = <table 10>,
  word = "def",
  <metatable> = <table 12>
}
DEBUGPRINT[427]: completion.lua:292: entry=<1>{
  cache = {
    entries = {},
    <metatable> = {
      __index = <2>{
        clear = <function 1>,
        ensure = <function 2>,
        get = <function 3>,
        key = <function 4>,
        new = <function 5>,
        set = <function 6>
      }
    }
  },
  completion_item = <3>{
    cmp = {
      kind_hl_group = "CmpItemKindMinuet",
      kind_text = "gemini"
    },
    documentation = {
      kind = "markdown",
      value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1\n```"
    },
    insertTextMode = 2,
    label = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1"
  },
  confirmed = false,
  context = <4>{
    aborted = true,
    bufnr = 2,
    cache = {
      entries = {
        ["get_offset:@\\(\\k\\| \\|:\\)*:def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\):def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\):def "] = 5,
        ["get_offset:\\%([[:space:]\"'`]\\|^\\)\\zs:[[:alnum:]_\\-\\+]*:\\?:def "] = 5,
        ["get_offset:\\%([^/\\\\:\\*?<>'\"`\\|]\\)*:def "] = 1,
        ["get_offset:\\%([^[:alnum:][:blank:]]\\|\\w\\+\\):def "] = 5,
        ["get_offset:^$:def "] = 5,
        ["get_offset:nf\\-\\S*:def "] = 5
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    cursor = <5>{
      character = 4,
      col = 5,
      line = 2,
      row = 3
    },
    cursor_after_line = "",
    cursor_before_line = "def ",
    cursor_line = "def ",
    filetype = "python",
    id = 93,
    option = <6>{
      reason = "auto"
    },
    prev_context = {
      aborted = true,
      bufnr = 2,
      cursor = {
        character = 3,
        col = 4,
        line = 2,
        row = 3
      },
      cursor_after_line = "",
      cursor_before_line = "def",
      cursor_line = "def",
      filetype = "python",
      id = 92,
      option = {},
      time = 348162706
    },
    time = 348162739,
    <metatable> = {
      __index = <7>{
        abort = <function 7>,
        changed = <function 8>,
        clone = <function 9>,
        empty = <function 10>,
        get_offset = <function 11>,
        get_reason = <function 12>,
        new = <function 13>
      }
    }
  },
  exact = false,
  filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
  id = 554,
  insert_range = {
    ["end"] = <8>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  match_cache = {
    entries = {
      [":0:0:1:0:1:1"] = {
        _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
        matches = <9>{},
        score = 14
      }
    },
    <metatable> = {
      __index = <table 2>
    }
  },
  match_view_args_ret = {
    input = "",
    matches = <table 9>,
    option = {
      disallow_fuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = true,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
      synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1" }
    },
    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1"
  },
  matches = <table 9>,
  offset = 5,
  replace_range = {
    ["end"] = <10>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  resolved_callbacks = {},
  resolving = false,
  score = 114,
  source = <11>{
    cache = {
      entries = {
        ["get_entries:5"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = <12>{
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 103,
            option = <13>{},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 5>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 93,
              option = <table 6>,
              time = 348162739
            },
            time = 348164739,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = {},
          offset = 5
        },
        ["get_entries:6"] = {
          ctx = {
            aborted = false,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = {
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 105,
            option = {},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 12>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 103,
              option = <table 13>,
              time = 348164739
            },
            time = 348164944,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = { <14>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <15>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              id = 550,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
                    matches = <16>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 16>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):" }
                },
                word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
              },
              matches = <table 16>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <17>{
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              source_offset = 5,
              source_replace_range = <18>{
                ["end"] = <table 10>,
                start = {
                  character = 5,
                  line = 2
                }
              },
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <19>{
                __index = <table 19>,
                _get_insert_text = <function 14>,
                _get_offset = <function 15>,
                _get_overwrite = <function 16>,
                _get_view = <function 17>,
                _get_vim_item = <function 18>,
                _get_word = <function 19>,
                _match = <function 20>,
                _set_completion_item = <function 21>,
                convert_range_encoding = <function 22>,
                execute = <function 23>,
                fill_defaults = <function 24>,
                get_commit_characters = <function 25>,
                get_completion_item = <function 26>,
                get_documentation = <function 27>,
                get_filter_text = <function 28>,
                get_insert_range = <function 29>,
                get_insert_text = <function 30>,
                get_kind = <function 31>,
                get_offset = <function 32>,
                get_overwrite = <function 33>,
                get_replace_range = <function 34>,
                get_view = <function 35>,
                get_view_matches = <function 36>,
                get_vim_item = <function 37>,
                get_word = <function 38>,
                is_deprecated = <function 39>,
                is_invalid = <function 40>,
                match = <function 41>,
                new = <function 42>,
                resolve = <function 43>
              }
            }, <20>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <21>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):",
              id = 551,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):",
                    matches = <22>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 22>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 22>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <23>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 25,
                      hl_group = "CmpItemAbbr",
                      text = "main():                  ",
                      width = 25
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "main():                  ",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "main():"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <24>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nmain():\n```"
                },
                insertTextMode = 2,
                label = "main():"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "main():",
              id = 552,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "main():",
                    matches = <25>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 25>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "main():", "main():" }
                },
                word = "main():"
              },
              matches = <table 25>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "main():",
              <metatable> = <table 19>
            }, <26>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <27>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
              id = 553,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
                    matches = <28>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 28>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1" }
                },
                word = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1"
              },
              matches = <table 28>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <table 1> },
          offset = 5
        }
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    complete_dedup = <function 44>,
    completion_context = {
      triggerCharacter = " ",
      triggerKind = 2
    },
    context = <table 4>,
    default_insert_range = <table 17>,
    default_replace_range = <table 18>,
    entries = { <table 14>, <table 20>, <table 23>, <table 26>, <table 1> },
    id = 10,
    incomplete = false,
    is_triggered_by_symbol = false,
    name = "minuet",
    offset = 5,
    position_encoding = "utf-16",
    request_offset = 5,
    response = {
      items = { <table 15>, <table 21>, <table 24>, <table 27>, <table 3> }
    },
    revision = 6,
    source = {
      debounce_timer = <userdata 1>,
      is_in_throttle = true,
      <metatable> = {
        __index = {
          complete = <function 45>,
          get_debug_name = <function 46>,
          get_keyword_pattern = <function 47>,
          get_trigger_characters = <function 48>,
          is_available = <function 49>,
          new = <function 50>
        }
      }
    },
    status = 3,
    <metatable> = {
      __index = {
        SourceStatus = {
          COMPLETED = 3,
          FETCHING = 2,
          WAITING = 1
        },
        _get_default_insert_range = <function 51>,
        _get_default_replace_range = <function 52>,
        complete = <function 53>,
        enabled = <function 54>,
        execute = <function 55>,
        get_debug_name = <function 56>,
        get_default_insert_range = <function 57>,
        get_default_replae_range = <function 58>,
        get_entries = <function 59>,
        get_entry_filter = <function 60>,
        get_fetching_time = <function 61>,
        get_keyword_length = <function 62>,
        get_keyword_pattern = <function 63>,
        get_matching_config = <function 64>,
        get_position_encoding_kind = <function 65>,
        get_source_config = <function 66>,
        get_trigger_characters = <function 67>,
        is_available = <function 68>,
        new = <function 69>,
        reset = <function 70>,
        resolve = <function 71>
      }
    }
  },
  source_insert_range = <table 17>,
  source_offset = 5,
  source_replace_range = <table 18>,
  word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
  <metatable> = <table 19>
}
DEBUGPRINT[427]: completion.lua:292: entry=<1>{
  cache = {
    entries = {},
    <metatable> = {
      __index = <2>{
        clear = <function 1>,
        ensure = <function 2>,
        get = <function 3>,
        key = <function 4>,
        new = <function 5>,
        set = <function 6>
      }
    }
  },
  completion_item = <3>{
    cmp = {
      kind_hl_group = "CmpItemKindMinuet",
      kind_text = "gemini"
    },
    documentation = {
      kind = "markdown",
      value = "```python\nmain():\n```"
    },
    insertTextMode = 2,
    label = "main():"
  },
  confirmed = false,
  context = <4>{
    aborted = true,
    bufnr = 2,
    cache = {
      entries = {
        ["get_offset:@\\(\\k\\| \\|:\\)*:def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\):def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\):def "] = 5,
        ["get_offset:\\%([[:space:]\"'`]\\|^\\)\\zs:[[:alnum:]_\\-\\+]*:\\?:def "] = 5,
        ["get_offset:\\%([^/\\\\:\\*?<>'\"`\\|]\\)*:def "] = 1,
        ["get_offset:\\%([^[:alnum:][:blank:]]\\|\\w\\+\\):def "] = 5,
        ["get_offset:^$:def "] = 5,
        ["get_offset:nf\\-\\S*:def "] = 5
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    cursor = <5>{
      character = 4,
      col = 5,
      line = 2,
      row = 3
    },
    cursor_after_line = "",
    cursor_before_line = "def ",
    cursor_line = "def ",
    filetype = "python",
    id = 93,
    option = <6>{
      reason = "auto"
    },
    prev_context = {
      aborted = true,
      bufnr = 2,
      cursor = {
        character = 3,
        col = 4,
        line = 2,
        row = 3
      },
      cursor_after_line = "",
      cursor_before_line = "def",
      cursor_line = "def",
      filetype = "python",
      id = 92,
      option = {},
      time = 348162706
    },
    time = 348162739,
    <metatable> = {
      __index = <7>{
        abort = <function 7>,
        changed = <function 8>,
        clone = <function 9>,
        empty = <function 10>,
        get_offset = <function 11>,
        get_reason = <function 12>,
        new = <function 13>
      }
    }
  },
  exact = false,
  filter_text = "main():",
  id = 552,
  insert_range = {
    ["end"] = <8>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  match_cache = {
    entries = {
      [":0:0:1:0:1:1"] = {
        _word = "main():",
        matches = <9>{},
        score = 14
      }
    },
    <metatable> = {
      __index = <table 2>
    }
  },
  match_view_args_ret = {
    input = "",
    matches = {},
    option = {
      disallow_fuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = true,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
      synonyms = { "main():", "main():" }
    },
    word = "main():                  "
  },
  matches = <table 9>,
  offset = 5,
  replace_range = {
    ["end"] = <10>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  resolved_callbacks = { <function 14> },
  resolved_completion_item = <table 3>,
  resolving = false,
  score = 114,
  source = <11>{
    cache = {
      entries = {
        ["get_entries:5"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = <12>{
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 103,
            option = <13>{},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 5>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 93,
              option = <table 6>,
              time = 348162739
            },
            time = 348164739,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = {},
          offset = 5
        },
        ["get_entries:6"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = {
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 105,
            option = {},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 12>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 103,
              option = <table 13>,
              time = 348164739
            },
            time = 348164944,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = { <14>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <15>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              id = 550,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
                    matches = <16>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):" }
                },
                word = "binary_search_recursive(arr: list, target: int, le…"
              },
              matches = <table 16>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <17>{
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              source_offset = 5,
              source_replace_range = <18>{
                ["end"] = <table 10>,
                start = {
                  character = 5,
                  line = 2
                }
              },
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <19>{
                __index = <table 19>,
                _get_insert_text = <function 15>,
                _get_offset = <function 16>,
                _get_overwrite = <function 17>,
                _get_view = <function 18>,
                _get_vim_item = <function 19>,
                _get_word = <function 20>,
                _match = <function 21>,
                _set_completion_item = <function 22>,
                convert_range_encoding = <function 23>,
                execute = <function 24>,
                fill_defaults = <function 25>,
                get_commit_characters = <function 26>,
                get_completion_item = <function 27>,
                get_documentation = <function 28>,
                get_filter_text = <function 29>,
                get_insert_range = <function 30>,
                get_insert_text = <function 31>,
                get_kind = <function 32>,
                get_offset = <function 33>,
                get_overwrite = <function 34>,
                get_replace_range = <function 35>,
                get_view = <function 36>,
                get_view_matches = <function 37>,
                get_vim_item = <function 38>,
                get_word = <function 39>,
                is_deprecated = <function 40>,
                is_invalid = <function 41>,
                match = <function 42>,
                new = <function 43>,
                resolve = <function 44>
              }
            }, <20>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <21>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):",
              id = 551,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):",
                    matches = <22>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 22>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 22>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <table 1>, <23>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <24>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
              id = 553,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
                    matches = <25>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 25>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <26>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <27>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
              id = 554,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
                    matches = <28>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1" }
                },
                word = "binary_search_recursive(arr: list, target: int, le…"
              },
              matches = <table 28>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <table 19>
            } },
          offset = 5
        }
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    complete_dedup = <function 45>,
    completion_context = {
      triggerCharacter = " ",
      triggerKind = 2
    },
    context = <table 4>,
    default_insert_range = <table 17>,
    default_replace_range = <table 18>,
    entries = { <table 14>, <table 20>, <table 1>, <table 23>, <table 26> },
    id = 10,
    incomplete = false,
    is_triggered_by_symbol = false,
    name = "minuet",
    offset = 5,
    position_encoding = "utf-16",
    request_offset = 5,
    response = {
      items = { <table 15>, <table 21>, <table 3>, <table 24>, <table 27> }
    },
    revision = 6,
    source = {
      debounce_timer = <userdata 1>,
      <metatable> = {
        __index = {
          complete = <function 46>,
          get_debug_name = <function 47>,
          get_keyword_pattern = <function 48>,
          get_trigger_characters = <function 49>,
          is_available = <function 50>,
          new = <function 51>
        }
      }
    },
    status = 3,
    <metatable> = {
      __index = {
        SourceStatus = {
          COMPLETED = 3,
          FETCHING = 2,
          WAITING = 1
        },
        _get_default_insert_range = <function 52>,
        _get_default_replace_range = <function 53>,
        complete = <function 54>,
        enabled = <function 55>,
        execute = <function 56>,
        get_debug_name = <function 57>,
        get_default_insert_range = <function 58>,
        get_default_replae_range = <function 59>,
        get_entries = <function 60>,
        get_entry_filter = <function 61>,
        get_fetching_time = <function 62>,
        get_keyword_length = <function 63>,
        get_keyword_pattern = <function 64>,
        get_matching_config = <function 65>,
        get_position_encoding_kind = <function 66>,
        get_source_config = <function 67>,
        get_trigger_characters = <function 68>,
        is_available = <function 69>,
        new = <function 70>,
        reset = <function 71>,
        resolve = <function 72>
      }
    }
  },
  source_insert_range = <table 17>,
  source_offset = 5,
  source_replace_range = <table 18>,
  word = "main():",
  <metatable> = <table 19>
}
DEBUGPRINT[427]: completion.lua:292: entry=<1>{
  cache = {
    entries = {},
    <metatable> = {
      __index = <2>{
        clear = <function 1>,
        ensure = <function 2>,
        get = <function 3>,
        key = <function 4>,
        new = <function 5>,
        set = <function 6>
      }
    }
  },
  completion_item = <3>{
    cmp = {
      kind_hl_group = "CmpItemKindMinuet",
      kind_text = "gemini"
    },
    documentation = {
      kind = "markdown",
      value = "```python\nlinear_search(arr: list, target: int):\n```"
    },
    insertTextMode = 2,
    label = "linear_search(arr: list, target: int):"
  },
  confirmed = false,
  context = <4>{
    aborted = true,
    bufnr = 2,
    cache = {
      entries = {
        ["get_offset:@\\(\\k\\| \\|:\\)*:def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\):def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\):def "] = 5,
        ["get_offset:\\%([[:space:]\"'`]\\|^\\)\\zs:[[:alnum:]_\\-\\+]*:\\?:def "] = 5,
        ["get_offset:\\%([^/\\\\:\\*?<>'\"`\\|]\\)*:def "] = 1,
        ["get_offset:\\%([^[:alnum:][:blank:]]\\|\\w\\+\\):def "] = 5,
        ["get_offset:^$:def "] = 5,
        ["get_offset:nf\\-\\S*:def "] = 5
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    cursor = <5>{
      character = 4,
      col = 5,
      line = 2,
      row = 3
    },
    cursor_after_line = "",
    cursor_before_line = "def ",
    cursor_line = "def ",
    filetype = "python",
    id = 93,
    option = <6>{
      reason = "auto"
    },
    prev_context = {
      aborted = true,
      bufnr = 2,
      cursor = {
        character = 3,
        col = 4,
        line = 2,
        row = 3
      },
      cursor_after_line = "",
      cursor_before_line = "def",
      cursor_line = "def",
      filetype = "python",
      id = 92,
      option = {},
      time = 348162706
    },
    time = 348162739,
    <metatable> = {
      __index = <7>{
        abort = <function 7>,
        changed = <function 8>,
        clone = <function 9>,
        empty = <function 10>,
        get_offset = <function 11>,
        get_reason = <function 12>,
        new = <function 13>
      }
    }
  },
  exact = false,
  filter_text = "linear_search(arr: list, target: int):",
  id = 551,
  insert_range = {
    ["end"] = <8>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  match_cache = {
    entries = {
      [":0:0:1:0:1:1"] = {
        _word = "linear_search(arr: list, target: int):",
        matches = <9>{},
        score = 14
      }
    },
    <metatable> = {
      __index = <table 2>
    }
  },
  match_view_args_ret = {
    input = "",
    matches = <table 9>,
    option = {
      disallow_fuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = true,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
      synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):" }
    },
    word = "linear_search(arr: list, target: int):"
  },
  matches = <table 9>,
  offset = 5,
  replace_range = {
    ["end"] = <10>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  resolved_callbacks = { <function 14> },
  resolved_completion_item = <table 3>,
  resolving = false,
  score = 114,
  source = <11>{
    cache = {
      entries = {
        ["get_entries:5"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = <12>{
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 103,
            option = <13>{},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 5>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 93,
              option = <table 6>,
              time = 348162739
            },
            time = 348164739,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = {},
          offset = 5
        },
        ["get_entries:6"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = {
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 105,
            option = {},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 12>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 103,
              option = <table 13>,
              time = 348164739
            },
            time = 348164944,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = { <14>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <15>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              id = 550,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
                    matches = <16>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):" }
                },
                word = "binary_search_recursive(arr: list, target: int, le…"
              },
              matches = <table 16>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <17>{
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              source_offset = 5,
              source_replace_range = <18>{
                ["end"] = <table 10>,
                start = {
                  character = 5,
                  line = 2
                }
              },
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <19>{
                __index = <table 19>,
                _get_insert_text = <function 15>,
                _get_offset = <function 16>,
                _get_overwrite = <function 17>,
                _get_view = <function 18>,
                _get_vim_item = <function 19>,
                _get_word = <function 20>,
                _match = <function 21>,
                _set_completion_item = <function 22>,
                convert_range_encoding = <function 23>,
                execute = <function 24>,
                fill_defaults = <function 25>,
                get_commit_characters = <function 26>,
                get_completion_item = <function 27>,
                get_documentation = <function 28>,
                get_filter_text = <function 29>,
                get_insert_range = <function 30>,
                get_insert_text = <function 31>,
                get_kind = <function 32>,
                get_offset = <function 33>,
                get_overwrite = <function 34>,
                get_replace_range = <function 35>,
                get_view = <function 36>,
                get_view_matches = <function 37>,
                get_vim_item = <function 38>,
                get_word = <function 39>,
                is_deprecated = <function 40>,
                is_invalid = <function 41>,
                match = <function 42>,
                new = <function 43>,
                resolve = <function 44>
              }
            }, <table 1>, <20>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 25,
                      hl_group = "CmpItemAbbr",
                      text = "main():                  ",
                      width = 25
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "main():                  ",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "main():"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <21>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nmain():\n```"
                },
                insertTextMode = 2,
                label = "main():"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "main():",
              id = 552,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "main():",
                    matches = <22>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "main():", "main():" }
                },
                word = "main():                  "
              },
              matches = <table 22>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = { <function 45> },
              resolved_completion_item = <table 21>,
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "main():",
              <metatable> = <table 19>
            }, <23>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <24>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
              id = 553,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
                    matches = <25>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 25>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <26>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <27>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
              id = 554,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
                    matches = <28>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1" }
                },
                word = "binary_search_recursive(arr: list, target: int, le…"
              },
              matches = <table 28>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <table 19>
            } },
          offset = 5
        }
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    complete_dedup = <function 46>,
    completion_context = {
      triggerCharacter = " ",
      triggerKind = 2
    },
    context = <table 4>,
    default_insert_range = <table 17>,
    default_replace_range = <table 18>,
    entries = { <table 14>, <table 1>, <table 20>, <table 23>, <table 26> },
    id = 10,
    incomplete = false,
    is_triggered_by_symbol = false,
    name = "minuet",
    offset = 5,
    position_encoding = "utf-16",
    request_offset = 5,
    response = {
      items = { <table 15>, <table 3>, <table 21>, <table 24>, <table 27> }
    },
    revision = 6,
    source = {
      debounce_timer = <userdata 1>,
      <metatable> = {
        __index = {
          complete = <function 47>,
          get_debug_name = <function 48>,
          get_keyword_pattern = <function 49>,
          get_trigger_characters = <function 50>,
          is_available = <function 51>,
          new = <function 52>
        }
      }
    },
    status = 3,
    <metatable> = {
      __index = {
        SourceStatus = {
          COMPLETED = 3,
          FETCHING = 2,
          WAITING = 1
        },
        _get_default_insert_range = <function 53>,
        _get_default_replace_range = <function 54>,
        complete = <function 55>,
        enabled = <function 56>,
        execute = <function 57>,
        get_debug_name = <function 58>,
        get_default_insert_range = <function 59>,
        get_default_replae_range = <function 60>,
        get_entries = <function 61>,
        get_entry_filter = <function 62>,
        get_fetching_time = <function 63>,
        get_keyword_length = <function 64>,
        get_keyword_pattern = <function 65>,
        get_matching_config = <function 66>,
        get_position_encoding_kind = <function 67>,
        get_source_config = <function 68>,
        get_trigger_characters = <function 69>,
        is_available = <function 70>,
        new = <function 71>,
        reset = <function 72>,
        resolve = <function 73>
      }
    }
  },
  source_insert_range = <table 17>,
  source_offset = 5,
  source_replace_range = <table 18>,
  word = "linear_search(arr: list, target: int):",
  <metatable> = <table 19>
}
DEBUGPRINT[427]: completion.lua:292: entry=<1>{
  cache = {
    entries = {},
    <metatable> = {
      __index = <2>{
        clear = <function 1>,
        ensure = <function 2>,
        get = <function 3>,
        key = <function 4>,
        new = <function 5>,
        set = <function 6>
      }
    }
  },
  completion_item = <3>{
    cmp = {
      kind_hl_group = "CmpItemKindMinuet",
      kind_text = "gemini"
    },
    documentation = {
      kind = "markdown",
      value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n```"
    },
    insertTextMode = 2,
    label = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
  },
  confirmed = false,
  context = <4>{
    aborted = true,
    bufnr = 2,
    cache = {
      entries = {
        ["get_offset:@\\(\\k\\| \\|:\\)*:def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\%(-\\%(\\w\\|á\\|Á\\|é\\|É\\|í\\|Í\\|ó\\|Ó\\|ú\\|Ú\\)*\\)*\\):def "] = 5,
        ["get_offset:\\%(-\\?\\d\\+\\%(\\.\\d\\+\\)\\?\\|\\h\\w*\\%(-\\w*\\)*\\):def "] = 5,
        ["get_offset:\\%([[:space:]\"'`]\\|^\\)\\zs:[[:alnum:]_\\-\\+]*:\\?:def "] = 5,
        ["get_offset:\\%([^/\\\\:\\*?<>'\"`\\|]\\)*:def "] = 1,
        ["get_offset:\\%([^[:alnum:][:blank:]]\\|\\w\\+\\):def "] = 5,
        ["get_offset:^$:def "] = 5,
        ["get_offset:nf\\-\\S*:def "] = 5
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    cursor = <5>{
      character = 4,
      col = 5,
      line = 2,
      row = 3
    },
    cursor_after_line = "",
    cursor_before_line = "def ",
    cursor_line = "def ",
    filetype = "python",
    id = 93,
    option = <6>{
      reason = "auto"
    },
    prev_context = {
      aborted = true,
      bufnr = 2,
      cursor = {
        character = 3,
        col = 4,
        line = 2,
        row = 3
      },
      cursor_after_line = "",
      cursor_before_line = "def",
      cursor_line = "def",
      filetype = "python",
      id = 92,
      option = {},
      time = 348162706
    },
    time = 348162739,
    <metatable> = {
      __index = <7>{
        abort = <function 7>,
        changed = <function 8>,
        clone = <function 9>,
        empty = <function 10>,
        get_offset = <function 11>,
        get_reason = <function 12>,
        new = <function 13>
      }
    }
  },
  exact = false,
  filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
  id = 550,
  insert_range = {
    ["end"] = <8>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  match_cache = {
    entries = {
      [":0:0:1:0:1:1"] = {
        _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
        matches = <9>{},
        score = 14
      }
    },
    <metatable> = {
      __index = <table 2>
    }
  },
  match_view_args_ret = {
    input = "",
    matches = {},
    option = {
      disallow_fuzzy_matching = false,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = true,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = true,
      synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):" }
    },
    word = "binary_search_recursive(arr: list, target: int, le…"
  },
  matches = <table 9>,
  offset = 5,
  replace_range = {
    ["end"] = <10>{
      character = 4,
      line = 2
    },
    start = {
      character = 4,
      line = 2
    }
  },
  resolved_callbacks = { <function 14> },
  resolved_completion_item = <table 3>,
  resolving = false,
  score = 114,
  source = <11>{
    cache = {
      entries = {
        ["get_entries:5"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = <12>{
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 103,
            option = <13>{},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 5>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 93,
              option = <table 6>,
              time = 348162739
            },
            time = 348164739,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = {},
          offset = 5
        },
        ["get_entries:6"] = {
          ctx = {
            aborted = true,
            bufnr = 2,
            cache = {
              entries = {},
              <metatable> = {
                __index = <table 2>
              }
            },
            cursor = {
              character = 4,
              col = 5,
              line = 2,
              row = 3
            },
            cursor_after_line = "",
            cursor_before_line = "def ",
            cursor_line = "def ",
            filetype = "python",
            id = 105,
            option = {},
            prev_context = {
              aborted = true,
              bufnr = 2,
              cursor = <table 12>,
              cursor_after_line = "",
              cursor_before_line = "def ",
              cursor_line = "def ",
              filetype = "python",
              id = 103,
              option = <table 13>,
              time = 348164739
            },
            time = 348164944,
            <metatable> = {
              __index = <table 7>
            }
          },
          entries = { <table 1>, <14>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <15>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):",
              id = 551,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):",
                    matches = <16>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = <table 16>,
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 16>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = { <function 15> },
              resolved_completion_item = <table 15>,
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <17>{
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              source_offset = 5,
              source_replace_range = <18>{
                ["end"] = <table 10>,
                start = {
                  character = 5,
                  line = 2
                }
              },
              word = "linear_search(arr: list, target: int):",
              <metatable> = <19>{
                __index = <table 19>,
                _get_insert_text = <function 16>,
                _get_offset = <function 17>,
                _get_overwrite = <function 18>,
                _get_view = <function 19>,
                _get_vim_item = <function 20>,
                _get_word = <function 21>,
                _match = <function 22>,
                _set_completion_item = <function 23>,
                convert_range_encoding = <function 24>,
                execute = <function 25>,
                fill_defaults = <function 26>,
                get_commit_characters = <function 27>,
                get_completion_item = <function 28>,
                get_documentation = <function 29>,
                get_filter_text = <function 30>,
                get_insert_range = <function 31>,
                get_insert_text = <function 32>,
                get_kind = <function 33>,
                get_offset = <function 34>,
                get_overwrite = <function 35>,
                get_replace_range = <function 36>,
                get_view = <function 37>,
                get_view_matches = <function 38>,
                get_vim_item = <function 39>,
                get_word = <function 40>,
                is_deprecated = <function 41>,
                is_invalid = <function 42>,
                match = <function 43>,
                new = <function 44>,
                resolve = <function 45>
              }
            }, <20>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 25,
                      hl_group = "CmpItemAbbr",
                      text = "main():                  ",
                      width = 25
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "main():                  ",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "main():"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <21>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nmain():\n```"
                },
                insertTextMode = 2,
                label = "main():"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "main():",
              id = 552,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "main():",
                    matches = <22>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "main():", "main():" }
                },
                word = "main():                  "
              },
              matches = <table 22>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = { <function 46> },
              resolved_completion_item = <table 21>,
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "main():",
              <metatable> = <table 19>
            }, <23>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 38,
                      hl_group = "CmpItemAbbr",
                      text = "linear_search(arr: list, target: int):",
                      width = 38
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "linear_search(arr: list, target: int):",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "linear_search(arr: list, target: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <24>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nlinear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1\n```"
                },
                insertTextMode = 2,
                label = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
              id = 553,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1",
                    matches = <25>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "linear_search(arr: list, target: int):", "linear_search(arr: list, target: int):\n    for i in range(len(arr)):\n        if arr[i] == target:\n            return i\n    return -1" }
                },
                word = "linear_search(arr: list, target: int):"
              },
              matches = <table 25>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "linear_search(arr: list, target: int):",
              <metatable> = <table 19>
            }, <26>{
              cache = {
                entries = {
                  ["get_view:7"] = {
                    abbr = {
                      bytes = 53,
                      hl_group = "CmpItemAbbr",
                      text = "binary_search_recursive(arr: list, target: int, le…",
                      width = 51
                    },
                    dup = 1,
                    kind = {
                      bytes = 4,
                      hl_group = "CmpItemKindMinuet",
                      text = "nil ",
                      width = 4
                    },
                    menu = {
                      bytes = 8,
                      hl_group = "CmpItemMenu",
                      text = "[MINUET]",
                      width = 8
                    }
                  },
                  ["get_vim_item:5"] = {
                    abbr = "binary_search_recursive(arr: list, target: int, le…",
                    dup = 1,
                    empty = 1,
                    equal = 1,
                    kind = "nil ",
                    kind_hl_group = "CmpItemKindMinuet",
                    menu = "[MINUET]",
                    word = "binary_search_recursive(arr: list, target: int, left: int, right: int):"
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              completion_item = <27>{
                cmp = {
                  kind_hl_group = "CmpItemKindMinuet",
                  kind_text = "gemini"
                },
                documentation = {
                  kind = "markdown",
                  value = "```python\nbinary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1\n```"
                },
                insertTextMode = 2,
                label = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1"
              },
              confirmed = false,
              context = <table 4>,
              exact = false,
              filter_text = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
              id = 554,
              insert_range = {
                ["end"] = <table 8>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              match_cache = {
                entries = {
                  [":0:0:1:0:1:1"] = {
                    _word = "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1",
                    matches = <28>{},
                    score = 14
                  }
                },
                <metatable> = {
                  __index = <table 2>
                }
              },
              match_view_args_ret = {
                input = "",
                matches = {},
                option = {
                  disallow_fuzzy_matching = false,
                  disallow_partial_fuzzy_matching = true,
                  disallow_partial_matching = true,
                  disallow_prefix_unmatching = false,
                  disallow_symbol_nonprefix_matching = true,
                  synonyms = { "binary_search_recursive(arr: list, target: int, left: int, right: int):", "binary_search_recursive(arr: list, target: int, left: int, right: int):\n    if right >= left:\n        mid = (left + right) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] > target:\n            return binary_search_recursive(arr, target, left, mid - 1)\n        else:\n            return binary_search_recursive(arr, target, mid + 1, right)\n    else:\n        return -1" }
                },
                word = "binary_search_recursive(arr: list, target: int, le…"
              },
              matches = <table 28>,
              offset = 5,
              replace_range = {
                ["end"] = <table 10>,
                start = {
                  character = 4,
                  line = 2
                }
              },
              resolved_callbacks = {},
              resolving = false,
              score = 114,
              source = <table 11>,
              source_insert_range = <table 17>,
              source_offset = 5,
              source_replace_range = <table 18>,
              word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
              <metatable> = <table 19>
            } },
          offset = 5
        }
      },
      <metatable> = {
        __index = <table 2>
      }
    },
    complete_dedup = <function 47>,
    completion_context = {
      triggerCharacter = " ",
      triggerKind = 2
    },
    context = <table 4>,
    default_insert_range = <table 17>,
    default_replace_range = <table 18>,
    entries = { <table 1>, <table 14>, <table 20>, <table 23>, <table 26> },
    id = 10,
    incomplete = false,
    is_triggered_by_symbol = false,
    name = "minuet",
    offset = 5,
    position_encoding = "utf-16",
    request_offset = 5,
    response = {
      items = { <table 3>, <table 15>, <table 21>, <table 24>, <table 27> }
    },
    revision = 6,
    source = {
      debounce_timer = <userdata 1>,
      <metatable> = {
        __index = {
          complete = <function 48>,
          get_debug_name = <function 49>,
          get_keyword_pattern = <function 50>,
          get_trigger_characters = <function 51>,
          is_available = <function 52>,
          new = <function 53>
        }
      }
    },
    status = 3,
    <metatable> = {
      __index = {
        SourceStatus = {
          COMPLETED = 3,
          FETCHING = 2,
          WAITING = 1
        },
        _get_default_insert_range = <function 54>,
        _get_default_replace_range = <function 55>,
        complete = <function 56>,
        enabled = <function 57>,
        execute = <function 58>,
        get_debug_name = <function 59>,
        get_default_insert_range = <function 60>,
        get_default_replae_range = <function 61>,
        get_entries = <function 62>,
        get_entry_filter = <function 63>,
        get_fetching_time = <function 64>,
        get_keyword_length = <function 65>,
        get_keyword_pattern = <function 66>,
        get_matching_config = <function 67>,
        get_position_encoding_kind = <function 68>,
        get_source_config = <function 69>,
        get_trigger_characters = <function 70>,
        is_available = <function 71>,
        new = <function 72>,
        reset = <function 73>,
        resolve = <function 74>
      }
    }
  },
  source_insert_range = <table 17>,
  source_offset = 5,
  source_replace_range = <table 18>,
  word = "binary_search_recursive(arr: list, target: int, left: int, right: int):",
  <metatable> = <table 19>
}

