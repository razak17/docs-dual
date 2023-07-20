-- Here's a Lua function that finds duplicates in a table:

local function findDuplicates(t)
	local duplicates = {}
	local seen = {}
	for _, v in ipairs(t) do
		if seen[v] then
			duplicates[v] = true
		else
			seen[v] = true
		end
	end
	return duplicates
end

--  This function takes a table `t` as input and returns a new table `duplicates` that contains all the values in `t` that appear more than
-- once. It does this by iterating over `t` and keeping track of which values have been seen before using a separate table `seen`. If a value is
-- seen more than once, it is added to the `duplicates` table.

-- Here's an example of how to use this function:

local t = { 1, 2, 3, 2, 4, 5, 3 }
local duplicates = findDuplicates(t)
for k, _ in pairs(duplicates) do
	print(k .. " is a duplicate")
end

-- This will output:
-- 2 is a duplicate
-- 3 is a duplicate
