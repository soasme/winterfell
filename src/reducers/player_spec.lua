local playerReducer = require('reducers/player')

describe("player reducer", function()

            it("should do nothing responding unknown action", function()
                  local state = playerReducer.reducer({direction = 'UP'}, {})
                  assert.are.equal(state.direction, 'UP')
            end)

            it("should change direction to UP", function()
                  local state = playerReducer.reducer({}, {type = 'MOVE_UP'})
                  assert.are.equal(state.direction, 'UP')
            end)

            it("should change direction to DOWN", function()
                  local state = playerReducer.reducer({}, {type = 'MOVE_DOWN'})
                  assert.are.equal(state.direction, 'DOWN')
            end)

            it("should change direction to LEFT", function()
                  local state = playerReducer.reducer({}, {type = 'MOVE_LEFT'})
                  assert.are.equal(state.direction, 'LEFT')
            end)

            it("should change direction to RIGHT", function()
                  local state = playerReducer.reducer({}, {type = 'MOVE_RIGHT'})
                  assert.are.equal(state.direction, 'RIGHT')
            end)
end)
