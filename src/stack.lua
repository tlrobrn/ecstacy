local class = require 'middleclass'

local Stack = class('Stack')

function Stack:initialize()
  self._stack = {}
  self._minStack = {}
end

function Stack:push(value)
  table.insert(self._stack, value)

  local min = self:min()
  if not min or value <= min then
    table.insert(self._minStack, value)
  end
end

function Stack:pop()
  local top = table.remove(self._stack)
  if top == self:min() then
    table.remove(self._minStack)
  end

  return top
end

function Stack:min()
  return self._minStack[#self._minStack]
end

return Stack
