local class = require 'middleclass'

local World = class('World')

function World:initialize()
  self.components = {}
end

return World
