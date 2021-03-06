#!/usr/bin/env lua5.4

local x, y = 0, 0

for line in io.lines() do
  local op = line:match("^[a-z]+")
  local changes = line:match("[0-9]+$")
  
  if op == "forward" then
    x = x + changes
  elseif op == "up" then
    y = y - changes
  elseif op == "down" then
    y = y + changes
  end
end
print(x * y)


