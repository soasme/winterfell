
require('core')

local cameraComponent = require('components/camera')
local playerComponent = require('components/player')
local mapComponent = require('components/map')
local messageComponent = require('components/message')

function love.load()
  cameraComponent.load()
  mapComponent.load()
  playerComponent.load()
  messageComponent.load()
end

function love.update(dt)
    mapComponent.update(dt)
    playerComponent.update(dt)
    cameraComponent.update(dt)
    messageComponent.update(dt)
end

function love.draw()
    cameraComponent.draw({
        mapComponent.draw,
        playerComponent.draw,
        messageComponent.draw,
    })
end
