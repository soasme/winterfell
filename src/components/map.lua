local sti = require "sti"

local map = {
    tiled_map = nil,
}

function map.load()
    map.tiled_map = sti.new("assets/first-scene.lua")
    store.dispatch({ type = 'LOAD_MAP', map = map.tiled_map, })
end

function map.update(dt)
    map.tiled_map:update(dt)
end

function map.draw(children)
    map.tiled_map:draw()
end

return map
