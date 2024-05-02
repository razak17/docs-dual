--------------------------------------------------------------------------------
--       ____   ____.__
-- ______\   \ /   /|__| _____
-- \_  __ \   Y   / |  |/     \       Razak Mo's neovim config
--  |  | \/\     /  |  |  Y Y  \      https://github.com/razak17
--  |__|    \___/   |__|__|_|  /
--                           \/
--------R-----------------------------------------------------------------------
local iniii = debug.getinfo(1, "S").source:sub(2)
local base_dir = iniii:match("(.*[/\\])"):sub(1, -2)
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
	vim.opt.rtp:append(base_dir)
end
lol()
hhh = "#ffff00"
vim.g.did_load_filetypes = 0 -- deactivate vim based filetype detection
local reload, ok = pcall(require, "plenary.reload")
 RELOAD = ok and reload.module or function(...)
	return ...
end
-- TODO: Test todo Lorem ipsum dolor color,
 local
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

require("rm.globals")
require("rm.bootstrap")
require("rm.config")

local packer = require("packer")

hello there

local test = "hello"
lo
