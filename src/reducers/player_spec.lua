local playerReducer = require('reducers/player')

describe("player reducer", function()

    function initState()
        return playerReducer({}, {type = "__INIT__"})
    end

    it("should change direction to UP", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_UP',
            dt = 0.1,
        })
        assert.are.equal(state.direction, 'UP')
        assert.are.equal(state.x, 0)
        assert.are.equal(state.y, -32)
    end)

    it("should change direction to DOWN", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_DOWN',
            dt = 0.1,
        })
        assert.are.equal(state.direction, 'DOWN')
        assert.are.equal(state.x, 0)
        assert.are.equal(state.y, 32)
    end)

    it("should change direction to LEFT", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_LEFT',
            dt = 0.1,
        })
        assert.are.equal(state.direction, 'LEFT')
        assert.are.equal(state.x, -32)
        assert.are.equal(state.y, 0)
    end)

    it("should change direction to RIGHT", function()
        local state = playerReducer(initState(), {
            type = 'MOVE_RIGHT',
            dt = 0.1,
        })
        assert.are.equal(state.direction, 'RIGHT')
        assert.are.equal(state.x, 32)
        assert.are.equal(state.y, 0)
    end)
end)
