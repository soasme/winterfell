local playerReducer = require('reducers/player')
local cameraReducer = require('reducers/camera')
local mapReducer = require('reducers/map')

function combine(state, action)
    state = state or {}
    return {
        player = playerReducer(state.player, action),
        camera = cameraReducer(state.camera, action),
        map = mapReducer(state.map, action),
    }
end

return combine
