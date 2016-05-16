local sti = require "sti"

function love.load()
    map = sti.new("assets/first-scene.lua")
    local layer = map:addCustomLayer("Sprites", 8)
    local player
    for k, object in pairs(map.objects) do
        if object.name == "Player" then
            player = object
            break
        end
    end
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    map:draw()
end
