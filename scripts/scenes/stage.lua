stage = Scene:new("stage")

function stage:load()
  playerOne:load()
end

function stage:update(dt)
  --
end

function stage:draw()
  love.graphics.setColor(BLACK)
  love.graphics.line(0, 384, 1024, 384)
  playerOne:draw()
end

function stage:mousereleased(x, y, button)
  --
end

return stage
