menu_sv = Scene:new("menu_sv")

function menu_sv:load()
  self.screen = love.graphics.newImage("assets/menu_sv.png")
end

function menu_sv:update()
  --
end

function menu_sv:draw()
  love.graphics.draw(self.screen)
  love.graphics.print({BLACK, "server"}, WIN_SZ.X/2, 50)
  if rxDg then
    love.graphics.print({BLACK, rxDg})
  end
end

function menu_sv:mousereleased()
  --
end

function menu_sv:textinput(txt)
  print('here0')
  txDg = txt
end

return menu_sv
