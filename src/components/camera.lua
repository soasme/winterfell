local camera = {}

function camera.render(children)
    love.graphics.push()
    love.graphics.rotate(-state.camera.rotation)
    love.graphics.scale(1 / state.camera.scaleX, 1 / state.camera.scaleY)
    love.grahpics.translate(-state.camera.x, -state.camera.y)
    children()
    love.grahpics.pop()
end

return camera
