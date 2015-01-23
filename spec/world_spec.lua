local World = require 'world'

describe('World', function()
  describe(':initialize', function()
    it('creates an empty components table', function()
      local world = World:new()
      assert.are.same({}, world.components)
    end)
  end)
end)
