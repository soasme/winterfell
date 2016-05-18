require('core')

local player = {}

function player.load()
    store.dispatch({
        type = 'SET_PLAYER_POSITION',
        x = love.graphics.getWidth() / 2,
        y = love.graphics.getHeight() / 2,
    })
end

function player.update(dt)
    local state = store.getState()
    if love.keyboard.isDown('left') then
        store.dispatch({
            type = 'MOVE_LEFT',
            dt = dt,
        })
    elseif love.keyboard.isDown('right') then
        store.dispatch({
            type = 'MOVE_RIGHT',
            dt = dt,
        })
    elseif love.keyboard.isDown('up') then
        store.dispatch({
            type = 'MOVE_UP',
            dt = dt,
        })
    elseif love.keyboard.isDown('down') then
        store.dispatch({
            type = 'MOVE_DOWN',
            dt = dt,
        })
    end
end

function player.draw(children)
    local _player = store.getState().player
    love.graphics.setColor({ 150, 150, 150 })
    love.graphics.rectangle('fill', 
        _player.x, _player.y, _player.width, _player.height)
end

return player
