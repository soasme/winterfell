-- A great thanks to @BlackBulletIV's tutorial about camera usage.
-- http://nova-fusion.com/2011/04/19/cameras-in-love2d-part-1-the-basics/
-- http://nova-fusion.com/2011/04/22/cameras-in-love2d-part-2-parallax-scrolling/
-- http://nova-fusion.com/2011/05/09/cameras-in-love2d-part-3-movement-bounds/
-- Although I adapt the code to redux style, he wrote all the core logics.

local utils = require('reducers/utils')
local assign = utils.assign

function math.clamp(x, min, max)
    return x < min and min or (x > max and max or x)
end

function reducer(state, action)
    if action.type == '__INIT__' then
        return {
            x = 0,
            y = 0,
            scaleX = 1,
            scaleY = 1,
            rotation = 0,
            bounds = {x1 = 0, y1 = 0, x2 = 0, y2 = 0}
        }
    elseif action.type == 'MOVE_CAMERA' then
        local dx = action.dx or 0
        local dy = action.dy or 0
        return assign(state, {
            x = state.x + dx,
            y = state.y + dy,
        })
    elseif action.type == 'ROTATE_CAMERA' then
        local dr = action.dr or 0
        return assign(state, {
            rotation = state.rotation + dr,
        })
    elseif action.type == 'SCALE_CAMERA' then
        local sx = action.sx or 1
        local sy = action.sy or sx
        return assign(state, {
            scaleX = state.scaleX * sx,
            scaleY = state.scaleY * sy,
        })
    elseif action.type == 'SET_CAMERA_POSITION' then
        local x = state.x
        local y = state.y
        if action.x then
            if state.bounds then
                x = math.clamp(action.x, state.bounds.x1, state.bounds.x2)
            else
                x = action.x
            end
        end
        if action.y then
            if state.bounds then
                y = math.clamp(action.y, state.bounds.y1, state.bounds.y2)
            else
                y = action.y
            end
        end
        return assign(state, { x = x, y = y })
    elseif action.type == 'SET_CAMERA_SCALE' then
        local sx = action.sx or state.scaleX
        local sy = action.sy or state.scaleY
        return assign(state, {
            scaleX = sx,
            scaleY = sy,
        })
    elseif action.type == 'SET_CAMERA_BOUNDS' then
        return assign(state, {
            bounds = {
                x1 = action.x1,
                y1 = action.y1,
                x2 = action.x2,
                y2 = action.y2,
            }
        })
    else
        return state
    end
end

return reducer
