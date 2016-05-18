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
    store.dispatch({
        type = 'SET_CAMERA_POSITION',
        x = store.player.x - love.graphics.getWidth() / 2,
        y = store.player.y - love.graphics.getHeight() / 2,
    })
end

function camera.draw(children)
    -- Set camera
    love.graphics.push()
    love.graphics.rotate(-store.camera.rotation)
    love.graphics.scale(1 / store.camera.scaleX, 1 / store.camera.scaleY)
    love.grahpics.translate(-store.camera.x, -store.camera.y)

    if children then
        for _, child in pairs(children) do
            child()
        end
    end

    -- Unset camera
    love.grahpics.pop()
end

return camera
