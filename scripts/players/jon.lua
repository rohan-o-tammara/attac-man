jon = Player:new("jon")

function jon:load()
  stickman = love.graphics.newImage("assets/stickman.png")
end

function jon:update(dt)
  --
end

function jon:draw()
  love.graphics.draw(stickman, 256, 241)
end

return jon
