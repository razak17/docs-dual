local base = {
	{ "<space>", desc = "Whitespace" },
	{ '"', desc = 'Balanced "' },
	{ "'", desc = "Balanced '" },
	{ "`", desc = "Balanced `" },
	{ "(", desc = "Balanced (" },
	{ ")", desc = "Balanced ) including white-space" },
	{ ">", desc = "Balanced > including white-space" },
	{ "<lt>", desc = "Balanced <" },
	{ "]", desc = "Balanced ] including white-space" },
	{ "[", desc = "Balanced [" },
	{ "}", desc = "Balanced } including white-space" },
	{ "{", desc = "Balanced {" },
	{ "?", desc = "User Prompt" },
	{ "_", desc = "Underscore" },
	{ "a", desc = "Argument" },
	{ "b", desc = "Balanced ), ], }" },
	{ "c", desc = "Class" },
	{ "d", desc = "Digit(s)" },
	{ "e", desc = "Word in CamelCase & snake_case" },
	{ "f", desc = "Function" },
	{ "g", desc = "Entire file" },
	{ "i", desc = "Indent" },
	{ "o", desc = "Block, conditional, loop" },
	{ "q", desc = "Quote `, \", '" },
	{ "t", desc = "Tag" },
	{ "u", desc = "Use/call function & method" },
	{ "U", desc = "Use/call without dot in name" },
}

local i = vim.deepcopy(base)
for k, v in pairs(i) do
	v[1] = 'i' .. v[1]
end

local a = vim.deepcopy(base)
for k, v in pairs(a) do
	v[1] = 'a' .. v[1]
	v.desc = v.desc:gsub(" including.*", "")
end

local ic = vim.deepcopy(base)
for k, v in pairs(ic) do
  v[1] = 'in' .. v[1]
end

local il = vim.deepcopy(base)
for k, v in pairs(il) do
  v[1] = 'il' .. v[1]
end

local ac = vim.deepcopy(base)
for k, v in pairs(ac) do
  v[1] = 'ac' .. v[1]
	v.desc = v.desc:gsub(" including.*", "")
end

local al = vim.deepcopy(base)
for k, v in pairs(al) do
  v[1] = 'al' .. v[1]
  v.desc = v.desc:gsub(" including.*", "")
end

-- print('DEBUGPRINT[2]: mni-new.lua:31: i=' .. vim.inspect(i))
-- print('DEBUGPRINT[3]: mni-new.lua:37: a=' .. vim.inspect(a))
print('DEBUGPRINT[1]: mni-new.lua:42: ic=' .. vim.inspect(ic))
