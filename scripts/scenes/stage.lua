stage = Scene:new("stage")

function stage:load()
  player:load()
  enemy:load()
end

function stage:update(dt)
  --
end

function stage:draw()
  love.graphics.setColor(BLACK)
  love.graphics.line(0, 384, 1024, 384)
  player:draw()
  enemy:load()
end

function stage:mousereleased(x, y, button)
  --
end

return stage
