local sti = require "sti"
local playerReducer = require 'reducers/player'
local worldReducer = require 'reducers/world'
local store = {dt = 0, player = {}, world = {}}

function love.load()
   map = sti.new("assets/first-scene.lua")
end

function love.update(dt)
   map:update(dt)
end

function love.draw()
   -- draw map
   map:draw()

   -- draw text

   -- draw npc

   -- draw player
   love.graphics.rectangle('fill', 0, 0, 32, 32)
end

-- call store.dispatch at event_listeners or schedule_intervals
--
