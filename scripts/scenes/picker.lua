picker = Scene:new("picker")

function picker:load()
  self.screen = love.graphics.newImage("assets/picker.png")
end

function picker:update(dt)
  --
end

function picker:draw()
  love.graphics.draw(self.screen)
end

function picker:mousereleased(x, y, button)
  if button == 1 then
    if isCursorIn(x, y, Box(199, 281, 253, 320)) then
      playerName = "jon"
    --[[
    elseif isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "dick"
    elseif isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "chad"
    elseif isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "nancy"
    elseif isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "bose"
      --]]
    end
  nextScene = "stage"
  end
end

return picker
