local cameraReducer = require('reducers/camera')
local utils = require('reducers/utils')
local assign = utils.assign

describe("Camera spec", function()

    function initState()
        return cameraReducer({}, {type = '__INIT__'})
    end

    it("should initialize a state", function()
        local state = initState()
        assert.are.equal(state.x, 0)
        assert.are.equal(state.y, 0)
        assert.are.equal(state.scaleX, 1)
        assert.are.equal(state.scaleY, 1)
        assert.are.equal(state.bounds.x1, 0)
        assert.are.equal(state.bounds.x2, 0)
        assert.are.equal(state.bounds.y1, 0)
        assert.are.equal(state.bounds.y2, 0)
    end)

    it("should move camera", function()
        local state = cameraReducer(initState(), {
            type = 'MOVE_CAMERA',
            dx = 10,
            dy = 10
        })
        assert.are.equal(state.x, 10)
        assert.are.equal(state.y, 10)
    end)

    it("should rotate camera", function()
        local state = cameraReducer(initState(), {
            type = 'ROTATE_CAMERA',
            dr = 10,
        })
        assert.are.equal(state.rotation, 10)
    end)

    it("should scale camera", function()
        local state = cameraReducer(initState(), {
            type = 'SCALE_CAMERA',
            sx = 10,
            sy = 10,
        })
        assert.are.equal(state.scaleX, 10)
        assert.are.equal(state.scaleY, 10)
    end)

    it("should set camera position", function()
        local state = cameraReducer(initState(), {
            type = 'SET_CAMERA_BOUNDS',
            x1 = 0,
            x2 = 10,
            y1 = 0,
            y2 = 10,
        })

        local state = cameraReducer(state, {
            type = 'SET_CAMERA_POSITION',
            x = 1,
            y = 10,
        })
        assert.are.equal(state.x, 1)
        assert.are.equal(state.y, 10)

        local state = cameraReducer(state, {
            type = 'SET_CAMERA_POSITION',
            x = 1,
            y = 11,
        })
        assert.are.equal(state.x, 1)
        assert.are.equal(state.y, 10)

        local state = cameraReducer(state, {
            type = 'SET_CAMERA_POSITION',
            x = 11,
            y = 1,
        })
        assert.are.equal(state.x, 10)
        assert.are.equal(state.y, 1)
    end)
end)
