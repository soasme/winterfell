local utils = require('reducers/utils')
local assign = utils.assign

function reducer(state, action)
    if action.type == '__INIT__' then
        return {
            direction = 'UP',
            isWalking = false,
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
            y = state.y - state.speed * action.dt,
        })
    elseif action.type == 'MOVE_DOWN' then
        return assign(state, {
            direction = 'DOWN',
            y = state.y + state.speed * action.dt,
        })
    elseif action.type == 'MOVE_LEFT' then
        return assign(state, {
            direction = 'LEFT',
            x = state.x - state.speed * action.dt,
        })
    elseif action.type == 'MOVE_RIGHT' then
        return assign(state, {
            direction = 'RIGHT',
            x = state.x + state.speed * action.dt,
        })
    else
        return state
    end
end

return reducer
