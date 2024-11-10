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
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
	vim.opt.rtp:append(base_dir)
RELOAD
end
lol()
hhh = "#ffff00"
vim.g.did_load_filetypes = 0 -- deactivate vim based filetype detection
iilocal reload, ok = pcall(require, "plenary.reload")
 RELOAD = ok and reload.module or function(...)
	return ...
end
-- TODO: Test todo
-- HACK: Test todo
-- FIXME: Test todo
 local
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

RELOAD("rm.globals")
require("rm.bootstrap")
require("rm.config")

local packer = require("packer")

loca test = "hello"

local hello = {'apple', 'banana', 'boy', 'cat', 'orange', 'pear', 'table', 'zebra'}
local hello = {'apple', 'banana', 'boy', 'cat', 'orange', 'pear', 'table', 'zebra'}
local hello = {'apple', 'banana', 'boy', 'cat', 'orange', 'pear', 'table', 'zebra'}

bash <(curl https://updates.zen-browser.app/appimage.sh)
curl -O https://updates.zen-browser.app/appimage.sh

local 💗 = 'heart'
