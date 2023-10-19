--[[
  Lua before version 5.4 did not support constants automatically,
  but you can add a table and make the table read-only using metatable (we will see this later).
  But from 5.4 onwards, use it like this:
]]

local USER_AGE <const> = 20 -- I prefer to use the SCREAMING_SNAKE_CASE pattern in constants

-- USER_AGE = 10

print(USER_AGE)