require('core')

local cameraComponent = require('components/camera')
local playerComponent = require('components/player')
local mapComponent = require('components/map')

function love.load()
  mapComponent.load()
  cameraComponent.load()
  playerComponent.load()
end

function love.update(dt)
    mapComponent.update(dt)
    playerComponent.update(dt)
    cameraComponent.update(dt)
end

function love.draw()
    cameraComponent.draw({
        mapComponent.draw,
        playerComponent.draw,
    })
end
