local E = require "scripts/engine"
local F = require "libs/functions"
local G = require "scripts/globals"

function love.load()
  love.window.setMode(WIN_SZ.X, WIN_SZ.Y)
  love.window.setTitle("Attac-Man")
  love.graphics.setBackgroundColor(WHITE)
  E:load()
end

function love.update(dt)
  E:update(dt)
end

function love.draw()
  E:draw()
end

function love.mousereleased(x, y, button)
  E:mousereleased(x, y, button)
end

function love.textinput(txt)
  E:textinput(txt)
end
