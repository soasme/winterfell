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
        local delta = math.max(state.speed * action.dt, action.boundary)
        return assign(state, {
            direction = 'UP',
            y = state.y - delta,
        })
    elseif action.type == 'MOVE_DOWN' then
        local delta = math.max(state.speed * action.dt, action.boundary)
        return assign(state, {
            direction = 'DOWN',
            y = state.y + delta,
        })
    elseif action.type == 'MOVE_LEFT' then
        local delta = math.max(state.speed * action.dt, action.boundary)
        return assign(state, {
            direction = 'LEFT',
            x = state.x - delta,
        })
    elseif action.type == 'MOVE_RIGHT' then
        local delta = math.min(state.speed * action.dt, action.boundary)
        return assign(state, {
            direction = 'RIGHT',
            x = state.x + delta,
        })
    else
        return state
    end
end

return reducer
