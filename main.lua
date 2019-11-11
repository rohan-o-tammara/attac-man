--- Imports ---
local g = require "globals"
local e = require "engine"

--- Main ---
function love.load()
  love.window.setMode(1024, 576)
  love.window.setTitle("wtf")
  love.graphics.setBackgroundColor(WHITE)
  e:load()
end

function love.update(dt)
  e:update(dt)
end

function love.draw()
  e:draw()
end

function love.mousereleased(x, y, button)
  e:mousereleased(x, y, button)
end
