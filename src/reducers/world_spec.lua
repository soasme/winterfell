local worldReducer = require('reducers/world')
local utils = require('reducers/utils')
local assign = utils.assign

describe('world reducer', function()
            it("should increase focus height", function()
                  local origState = assign(worldReducer.initialState, {size={height=1, width=0}})
                  local state = worldReducer.reducer(origState, {type = 'MOVE_UP'})
                  assert.are.equal(state.focus.height, 1)
            end)

            it("should stop moving up at the edge", function()
                  local state = worldReducer.reducer(worldReducer.initialState, {type = 'MOVE_UP'})
                  assert.are.equal(state.focus.height, 0)
            end)

            it("should decrease focus height", function()
                  local origState = assign(worldReducer.initialState, {size={height=1, width=0}, focus={height=1, width=0}})
                  local state = worldReducer.reducer(origState, {type = 'MOVE_DOWN'})
                  assert.are.equal(state.focus.height, 0)
            end)

            it("should stop moving down at the edge", function()
                  local state = worldReducer.reducer(worldReducer.initialState, {type = 'MOVE_DOWN'})
                  assert.are.equal(state.focus.height, 0)
            end)

            it("should increase focus width", function()
                  local origState = assign(worldReducer.initialState, {size={height=0, width=1}})
                  local state = worldReducer.reducer(origState, {type = 'MOVE_RIGHT'})
                  assert.are.equal(state.focus.width, 1)
            end)

            it("should stop moving right at the edge", function()
                  local state = worldReducer.reducer(worldReducer.initialState, {type = 'MOVE_RIGHT'})
                  assert.are.equal(state.focus.width, 0)
            end)

            it("should decrease focus width", function()
                  local origState = assign(worldReducer.initialState, {size={height=0, width=1}, focus={height=0, width=1}})
                  local state = worldReducer.reducer(origState, {type = 'MOVE_LEFT'})
                  assert.are.equal(state.focus.width, 0)
            end)

            it("should stop moving left at the edge", function()
                  local state = worldReducer.reducer(worldReducer.initialState, {type = 'MOVE_LEFT'})
                  assert.are.equal(state.focus.width, 0)
            end)

end)
