menu_cl = Scene:new("menu_cl")

function menu_cl:load()
  self.screen = love.graphics.newImage("assets/menu_cl.png")
end

function menu_cl:update()
  --
end

function menu_cl:draw()
  love.graphics.draw(self.screen)
  love.graphics.print({BLACK, "client"}, WIN_SZ.X/2, 50)
  if rxDg then
    love.graphics.print({BLACK, rxDg})
  end
end

function menu_cl:mousereleased()
  --
end

function menu_cl:textinput(txt)
  print('here0')
  txDg = txt
end

return menu_cl
