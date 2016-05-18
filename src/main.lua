local cameraComponent = require('components/camera')
local playerComponent = require('components/player')
local sti = require "sti"

require('core')

function love.load()
  map = sti.new("assets/first-scene.lua")

  cameraComponent.load()

  playerComponent.load()
end

function love.update(dt)
    map:update(dt)

    playerComponent.update(dt)

    cameraComponent.update(dt)
end

function love.draw()
    function draw_map() map:draw() end

    cameraComponent.draw({
        draw_map,
        playerComponent.draw,
    })
end
