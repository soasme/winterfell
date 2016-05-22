local textLib = require('libs/text/tastytext')

local message = {}
local tags = {
    red     = {255,0,0,255}, -- r,g,b,a
    ['/red']= {255,255,255}, -- alpha defaults to 255
    small   = love.graphics.newFont(12),
    regular = love.graphics.newFont(24),
}

function message.load()
end

function message.update(dt)
end

function message.draw(children)
    local _message = store.getState().message or {
        content = 'hello world',
    }
    local _player = store.getState().player
    _message.content = _player.direction
    text = textLib.new(_message.content, 800, tags.regular, tags)
    text:draw()
end

return message
