local playerReducer = require('reducers/player')
local cameraReducer = require('reducers/camera')

function combine(state, action)
    state = state or {}
    return {
        player = playerReducer(state.player, action),
        camera = cameraReducer(state.camera, action),
    }
end

return combine
