local player = {
    props = {
        isWalking = false,
        boundary = 0,
        direction = 'UP',
    }
}

function player.load()
    store.dispatch({
        type = 'SET_PLAYER_POSITION',
        x = love.graphics.getWidth() / 2,
        y = love.graphics.getHeight() / 2,
    })
end

function player.update(dt)
    local state = store.getState()
    local x = state.player.x
    local y = state.player.y
    local direction = state.player.direction

    if love.keyboard.isDown('left') then
        player.props.direction = 'LEFT'
        player.props.isWalking = true
        player.props.boundary = 0
    elseif love.keyboard.isDown('right') then
        player.props.direction = 'RIGHT'
        player.props.isWalking = true
        player.props.boundary = (20 - 1) * 32
    elseif love.keyboard.isDown('up') then
        player.props.direction = 'UP'
        player.props.isWalking = true
        player.props.boundary = 0
    elseif love.keyboard.isDown('down') then
        player.props.direction = 'DOWN'
        player.props.isWalking = true
        player.props.boundary = (20 - 1) * 32
    else
        player.props.isWalking = false
        player.props.boundary = 0
    end

    if player.props.isWalking then
        store.dispatch({
            type = 'MOVE_' .. player.props.direction,
            dt = dt,
            boundary=player.props.boundary,
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
