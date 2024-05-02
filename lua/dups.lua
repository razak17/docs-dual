local function removeDuplicates(t)
  local seen = {}
  local result = {}

  for _, value in ipairs(t) do
    if not seen[value] then
      table.insert(result, value)
      seen[value] = true
    end
  end

  return result
end

local t = { "to", "no", "no", "of" }
local unique = removeDuplicates(t)
print(table.concat(unique, ", ")) -- prints "1, 2, 3, 4"
