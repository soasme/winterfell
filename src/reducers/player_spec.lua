local playerReducer = require('reducers/player')

describe("player reducer", function()

    function initState()
        return playerReducer({}, {type = "__INIT__"})
    end

    it("should change direction to UP", function()
        local state = initState()
        state.y = 32
        local nextState = playerReducer(state, {
            type = 'MOVE_UP',
            dt = 0.1,
            boundary = 32,
        })
        assert.are.equal(nextState.direction, 'UP')
        assert.are.equal(nextState.x, 0)
        assert.are.equal(nextState.y, 0)
    end)

    it("should change direction to DOWN", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_DOWN',
            dt = 0.1,
            boundary = 32,
        })
        assert.are.equal(state.direction, 'DOWN')
        assert.are.equal(state.x, 0)
        assert.are.equal(state.y, 32)
    end)

    it("should change direction to LEFT", function()
        local state = initState()
        state.x = 32
        local nextState = playerReducer(state, {
            type = 'MOVE_LEFT',
            dt = 0.1,
            boundary = 32,
        })
        assert.are.equal(nextState.direction, 'LEFT')
        assert.are.equal(nextState.x, 0)
        assert.are.equal(nextState.y, 0)
    end)

    it("should change direction to RIGHT", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_RIGHT',
            dt = 0.1,
            boundary = 32,
        })
        assert.are.equal(state.direction, 'RIGHT')
        assert.are.equal(state.x, 32)
        assert.are.equal(state.y, 0)
    end)
end)
