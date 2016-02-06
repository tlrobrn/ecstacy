local class = require 'middleclass'

local Stack = class('Stack')

function Stack:initialize()
  self._stack = {}
  self._minStack = {}
  self._maxStack = {}
end

function Stack:push(value)
  table.insert(self._stack, value)

  local min = self:min()
  if not min or value <= min then
    table.insert(self._minStack, value)
  end

  local max = self:max()
  if not max or value >= max then
    table.insert(self._maxStack, value)
  end
end

function Stack:pop()
  local top = table.remove(self._stack)
  if top == self:min() then
    table.remove(self._minStack)
  elseif top == self:max() then
    table.remove(self._maxStack)
  end

  return top
end

function Stack:min()
  return self._minStack[#self._minStack]
end

function Stack:max()
  return self._maxStack[#self._maxStack]
end

return Stack
