--------------------------------------------------------------------------------
--       ____   ____.__
-- ______\   \ /   /|__| _____
-- \_  __ \   Y   / |  |/     \       Razak Mo's neovim config
--  |  | \/\     /  |  |  Y Y  \      https://github.com/razak17
--  |__|    \___/   |__|__|_|  /
--                           \/
--------------------------------------------------------------------------------
local iniii = debug.getinfo(1, "S").source:sub(2)
local base_dir = iniii:match("(.*[/\\])"):sub(1, -2)
vim.opt.rtp:append(base_dir)
hhh = "#77cb99"
vim.g.did_load_filetypes = 0 -- deactivate vim based filetype detection
local reload, ok = pcall(require, "plenary.reload")
RELOAD = ok and reload.module or function(...)
	return ...
end
-- TODO: Test todo
-- HACK: Test todo
-- FIXME: Test todo
--------------------------------------------------------------------------------
---------------------------------------------------------------------------------
require("rm.globals"),
require("rm.bootstrap")
require("rm.config")

---@type "a" | "b" | "c"
local enum = "a"
