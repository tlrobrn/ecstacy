local Stack = require 'stack'

describe('Stack', function()
  describe(':push', function()
    it('adds an element to the stack', function()
      local stack = Stack:new()
      stack:push(1)

      assert.are.equal(1, #stack._stack)
    end)

    it('records minimum values when inserted', function()
      local stack = Stack:new()
      stack:push(1)

      assert.are.equal(1, stack:min())
    end)
  end)

  describe(':pop', function()
    it('removes and returns the top element', function()
      local stack = Stack:new()
      stack:push(1)
      
      local top = stack:pop()

      assert.are.equal(1, top)
      assert.are.equal(0, #stack._stack)
    end)

    it('returns nil for an empty stack', function()
      local stack = Stack:new()
      local top = stack:pop()

      assert.is_nil(top)
    end)

    it('removes min from stack if the top element was minimal', function()
      local stack = Stack:new()
      stack:push(1)
      stack:pop()

      assert.is_nil(stack:min())
    end)
  end)

  describe(':min', function()
    it('returns the minimum value in the stack', function()
      local stack = Stack:new()
      stack:push(1)
      stack:push(2)
      local min = stack:min()

      assert.are.equal(1, min)
    end)

    it('returns nil for an empty stack', function()
      local stack = Stack:new()
      local min = stack:min()

      assert.is_nil(min)
    end)

    it('resets min after a minimum value was popped', function()
      local stack = Stack:new()
      stack:push(2)
      stack:push(1)
      stack:pop()

      assert.are.equal(2, stack:min())
    end)
  end)

  describe(':max', function()
    it('returns the maximum value in the stack', function()
      local stack = Stack:new()
      stack:push(1)
      stack:push(2)
      local max = stack:max()

      assert.are.equal(2, max)
    end)

    it('returns nil for an empty stack', function()
      local stack = Stack:new()
      local max = stack:max()

      assert.is_nil(max)
    end)

    it('resets min after a minimum value was popped', function()
      local stack = Stack:new()
      stack:push(1)
      stack:push(2)
      stack:pop()

      assert.are.equal(1, stack:max())
    end)
  end)
end)
