local sti = require "sti"

local map = {}

function map.load()
    map = sti.new("assets/first-scene.lua")
end

function map.update(dt)
    map:update(dt)
end

function map.draw(children)
    map:draw()
end

return map
