menu = Scene:new("menu")

local playClicked = false

function menu:load()
  self.screen = love.graphics.newImage("assets/menu1.png")
end

function menu:update(dt)
  --
end

function menu:draw()
  love.graphics.draw(self.screen)
end

function menu:mousereleased(x, y, button)
  if button == 1 then
    if isCursorIn(x, y, Box(473, 230, 546, 268)) then
      self.screen = love.graphics.newImage("assets/menu2.png")
      playClicked = true
    elseif isCursorIn(x, y, Box(600, 205, 679, 241)) and playClicked then
      threadFile = "scripts/server.lua"
      nextScene = "menu_sv"
    elseif isCursorIn(x, y, Box(603, 257, 733, 284)) and playClicked then
      threadFile = "scripts/client.lua"
      nextScene = "menu_cl"
    elseif isCursorIn(x, y, Box(448, 300, 584, 338)) then
      nextScene = "settings"
    elseif isCursorIn(x, y, Box(458, 365, 556, 395)) then
      nextScene = "about"
    elseif isCursorIn(x, y, Box(476, 427, 541, 459)) then
      love.event.quit(0)
    end
  end
end

return menu
