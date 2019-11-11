picker = Scene:new("picker")

function picker:load()
  pickScreen = love.graphics.newImage("assets/picker.png")
end

function picker:update(dt)
  --
end

function picker:draw()
  love.graphics.draw(pickScreen)
end

function picker:mousereleased(x, y, button)
  if button == 1 then
    if picker:isCursorIn(x, y, 199, 281, 253, 320) then
      playerOneName = "jon"
    --[[
    elseif picker:isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "dick"
    elseif picker:isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "chad"
    elseif picker:isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "nancy"
    elseif picker:isCursorIn(x, y, 348, 302, 422, 335) then
      playerName = "bose"
      --]]
    end
  nextScene = "stage"
  end
end

return picker
