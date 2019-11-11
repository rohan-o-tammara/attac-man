Scene = {}

function Scene:new(sceneName)
  local newScene = { name = sceneName }
  self.__index = self
  setmetatable(newScene, self)
  return newScene
end

function Scene:load() end
function Scene:update(dt) end
function Scene:draw() end

function Scene:isCursorIn(x, y, x1, y1, x2, y2)
  if (x >= x1) and (y >= y1) and (x <= x2) and (y <= y2) then
    return true
  else
    return false
  end
end
