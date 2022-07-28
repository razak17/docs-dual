local dap = require('dap')

local function debugJest(testName, filename)
  print("starting " .. testName .. " in " .. filename)
  dap.run({
    type = "node2",
    request = "launch",
    cwd = vim.fn.getcwd(),
    runtimeArgs = {
      "--inspect-brk",
      "/usr/local/bin/jest",
      "--no-coverage",
      "-t",
      testName,
      "--",
      filename,
    },
    sourceMaps = true,
    protocol = "inspector",
    skipFiles = { "<node_internals>/**/*.js" },
    console = "integratedTerminal",
    port = 9229,
  })
end



      -- ["?"] = {
      --   ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>',
      --   "scopes",
      -- },
      -- C = { ":lua require'dap'.clear_breakpoints()<cr>", "clear breakpoints" },
      -- e = { ":lua require'dap'.set_exception_breakpoints({'all'})<cr>", "breakpoint exception" },
      -- n = { ":lua require'dap'.run_to_cursor()<cr>", "run to cursor" },
      -- K = { ":lua require'dap.ui.widgets'.hover()<cr>", "hover" },
      -- R = { ':lua require"dap".repl.open({}, "vsplit")<cr><C-w>l<cr>', "open repl in vsplit" },
      -- x = { ":lua require'dap'.disconnect()<cr>", "disconnect" },
      -- z = { ":lua require'dap'.terminate()<cr>", "terminate" },
      -- g = { ":lua require'dap'.session()<cr>", "get session" },
      -- q = { ":lua require'dap'.close()<cr>", "quit" },
      -- k = { ":lua require'dap'.up()<cr>", "up" },
      -- j = { ":lua require'dap'.down()<cr>", "down" },
      -- p = { ":lua require'dap'.pause.toggle()<cr>", "pause" },
      -- f = { ":Telescope dap frames<cr>", "frames" },
      -- v = { ":Telescope dap variables<cr>", "variables" },
      -- b = { ":Telescope dap list_breakpoints<cr>", "list breakpoints" },
