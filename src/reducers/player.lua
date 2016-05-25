local utils = require('reducers/utils')
local assign = utils.assign

function reducer(state, action)
    if action.type == '__INIT__' then
        return {
            direction = 'UP',
            x = 0,
            y = 0,
            width = 32,
            height = 32,
            speed = 320,
        }
    elseif action.type == 'SET_PLAYER_POSITION' then
        return assign(state, {
            x = action.x or 0,
            y = action.y or 0,
        })
    elseif action.type == 'MOVE_UP' then
        local y = math.max(action.boundary, state.y - state.speed * action.dt)
        return assign(state, {
            direction = 'UP',
            y = y,
        })
    elseif action.type == 'MOVE_DOWN' then
        local y = math.min(action.boundary, state.y + state.speed * action.dt)
        return assign(state, {
            direction = 'DOWN',
            y = y,
        })
    elseif action.type == 'MOVE_LEFT' then
        local x = math.max(action.boundary, state.x - state.speed * action.dt)
        return assign(state, {
            direction = 'LEFT',
            x = x,
        })
    elseif action.type == 'MOVE_RIGHT' then
        local x = math.min(action.boundary, state.x + state.speed * action.dt)
        return assign(state, {
            direction = 'RIGHT',
            x = x,
        })
    else
        return state
    end
end

return reducer
