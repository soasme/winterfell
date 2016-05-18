require('core')

local camera = {}

function math.clamp(x, min, max)
  return x < min and min or (x > max and max or x)
end

function camera.load()
    store.dispatch({
        type = 'SET_CAMERA_BOUNDS',
        x1 = 0,
        y1 = 0,
        x2 = love.graphics.getWidth(),
        y2 = love.graphics.getHeight(),
    })
end

function camera.update(dt)
    local state = store.getState()
    store.dispatch({
        type = 'SET_CAMERA_POSITION',
        x = state.player.x - love.graphics.getWidth() / 2,
        y = state.player.y - love.graphics.getHeight() / 2,
    })
end

function camera.draw(children)
    -- Set camera
    local state = store.getState()
    love.graphics.push()
    love.graphics.rotate(-state.camera.rotation)
    love.graphics.scale(1 / state.camera.scaleX, 1 / state.camera.scaleY)
    love.graphics.translate(-state.camera.x, -state.camera.y)

    -- Render children nodes
    if children then
        for _, child in pairs(children) do
            child()
        end
    end

    -- Unset camera
    love.graphics.pop()
end

return camera
