Scene = {}

function Scene:new(sceneName)
  local newScene = { name = sceneName, screen = nil }
  self.__index = self
  setmetatable(newScene, self)
  return newScene
end

function Scene:load() end
function Scene:update(dt) end
function Scene:draw() end
function Scene:mousereleased(x, y, button) end
function Scene:textinput(txt) end
