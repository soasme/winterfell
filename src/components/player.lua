local player = {}

function player.load()
    store.dispatch({
        type = 'SET_PLAYER_POSITION',
        x = love.graphics.getWidth() / 2,
        y = love.graphics.getHeight() / 2,
    })
end

function player.isMovingToLeft()
    if love.keyboard.isDown('left') then
        return true
    end
    -- fixme: add touch support
    -- if touch coordinate is left then current player coordinate : yes
end

function player.update(dt)
    local state = store.getState()
    local x = state.player.x
    local y = state.player.y
    local boundaryTop = 0
    local boundaryBottom = (20 - 1) * 32
    local boundaryLeft = 0
    local boundaryRight = (20 - 1) * 32

    if player.isMovingToLeft() then
        store.dispatch({
            type = 'MOVE_LEFT',
            dt = dt,
            boundary=boundaryLeft,
        })
    elseif love.keyboard.isDown('right') then
        store.dispatch({
            type = 'MOVE_RIGHT',
            dt = dt,
            boundary=boundaryRight,
        })
    elseif love.keyboard.isDown('up') then
        store.dispatch({
            type = 'MOVE_UP',
            dt = dt,
            boundary=boundaryTop,
        })
    elseif love.keyboard.isDown('down') then
        store.dispatch({
            type = 'MOVE_DOWN',
            dt = dt,
            boundary=boundaryBottom,
        })
    end

    if x ~= store.getState().player.x or y ~= store.getState().player.y then
        store.dispatch({
            type = 'PLAYER_MOVED',
            x = store.getState().player.x,
            y = store.getState().player.y,
            direction = store.getState().player.direction,
        })
    end
end

function player.draw(children)
    local _player = store.getState().player
    love.graphics.rectangle('fill', 
        _player.x, _player.y, _player.width, _player.height)
end

return player
