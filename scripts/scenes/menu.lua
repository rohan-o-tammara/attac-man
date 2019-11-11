menu = Scene:new("menu")

function menu:load()
  menuScreen = love.graphics.newImage("assets/menu.png")
end

function menu:update(dt)
  --
end

function menu:draw()
  love.graphics.draw(menuScreen)
end

function menu:mousereleased(x, y, button)
  -- Left click
  if button == 1 then
    if menu:isCursorIn(x, y, 473, 230, 546, 268) then
      nextScene = "picker"
    end
    -- rest of the options
  end
end

return menu
