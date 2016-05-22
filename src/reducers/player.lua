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
        return assign(state, {
            direction = 'UP',
            y = math.max(state.y - state.speed * action.dt, 0),
        })
    elseif action.type == 'MOVE_DOWN' then
        return assign(state, {
            direction = 'DOWN',
            y = math.min(state.y + state.speed * action.dt, (20-1)*32),
        })
    elseif action.type == 'MOVE_LEFT' then
        return assign(state, {
            direction = 'LEFT',
            x = math.max(state.x - state.speed * action.dt, 0),
        })
    elseif action.type == 'MOVE_RIGHT' then
        return assign(state, {
            direction = 'RIGHT',
            x = math.min(state.x + state.speed * action.dt, (20-1)*32),
        })
    else
        return state
    end
end

return reducer
