--------------------------------------------------------------------------------
--       ____   ____.__
-- ______\   \ /   /|__| _____
-- \_  __ \   Y   / |  |/     \       Razak Mo's neovim config
--  |  | \/\     /  |  |  Y Y  \      https://github.com/razak17
--  |__|    \___/   |__|__|_|  /
--                           \/
---------------------------------------------------------------------------------lllllllllllllllllllllllllllllllllllllll
local init_path = debug.getinfo(1, "S").source:sub(2)
local base_dir = init_path:match("(.*[/\\])"):sub(1, -2)
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end
base_dir
lol()
hhh = "#ffff00"
       local names = ''
vim.g.did_load_filetypes = 0 -- deactivate vim based filetype detection
local ok, reload = pcall(require, "plenary.reload")
RELOAD = ok and reload.reload-module or function(...)
  return ...
end
--TODO: Test todo Lorem ipsum dolor color
------------------------------------------------------------------------
-- Load Module
------------------------------------------------------------------------
require("user.globals")
require("user.bootstrap")
require("user.config")
--       ,
lohello
cal
A B C D O P S
hello  
hello there
hello dome 
hello l
hello   lflfkfj
hello lflflfl
git@github.com:yutkat/convert-git-url.nvim.git

