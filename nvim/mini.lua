local i = {
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
local a = vim.deepcopy(i)
for k, v in pairs(a) do
	v.desc = v.desc:gsub(" including.*", "")
end

local ic = vim.deepcopy(i)
local ac = vim.deepcopy(a)

local in_table = {}
local il_table = {}
local an_table = {}
local al_table = {}

for key, name in pairs({ n = "Next", l = "Last" }) do
	in_table[#in_table + 1] = { key, group = "Inside " .. name .. " textobject" }
	for k, v in pairs(i) do
		if key == "n" then
			in_table[#in_table + 1] = { v[1], desc = v.desc }
		end
		if key == "l" then
			il_table[#il_table + 1] = { v[1], desc = v.desc }
		end
	end
end

for key, name in pairs({ n = "Next", l = "Last" }) do
	an_table[#an_table + 1] = { key, group = "Around " .. name .. " textobject" }
	for k, v in pairs(a) do
		if key == "n" then
			an_table[#an_table + 1] = { v[1], desc = v.desc }
		end
		if key == "l" then
			al_table[#al_table + 1] = { v[1], desc = v.desc }
		end
	end
end

print('DEBUGPRINT[1]: mini.lua:47: in_table=' .. vim.inspect(in_table))

  { "a", group = "around" },
  { 'a"', desc = "double quoted string" },
  { "a'", desc = "single quoted string" },
  { "a(", desc = "same as ab" },
  { "a)", desc = "same as ab" },
  { "a<", desc = "a <> from '<' to the matching '>'" },
  { "a>", desc = "same as a<" },
  { "aB", desc = "a Block from [{ to ]} (with brackets)" },
  { "aW", desc = "a WORD (with white space)" },
  { "a[", desc = "a [] from '[' to the matching ']'" },
  { "a]", desc = "same as a[" },
  { "a`", desc = "string in backticks" },
  { "ab", desc = "a block from [( to ]) (with braces)" },
  { "ap", desc = "a paragraph (with white space) " },
  { "as", desc = "a sentence (with white space)" },
  { "at", desc = "a tag block (with white space)" },
  { "aw", desc = "a word (with white space)" },
  { "a{", desc = "same as aB" },
  { "a}", desc = "same as aB" },
