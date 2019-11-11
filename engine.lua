require "globals"
require "scripts/classes/scene"
require "scripts/classes/player"

E = { scenes = {} }

function E:load()
  local sceneNames = love.filesystem.getDirectoryItems("scripts/scenes/")
  for i, s in ipairs(sceneNames) do
    local sceneName = string.sub(s, 1, -5)
    self.scenes[sceneName] = require("scripts/scenes/" ..sceneName)
  end
  E:setScene("menu")
end

function E:update(dt)
  self.scenes[currentScene]:update(dt)
end

function E:draw()
  self.scenes[currentScene]:draw()
end

function E:mousereleased(x, y, button)
  self.scenes[currentScene]:mousereleased(x, y, button)
  if currentScene == "picker" then
    playerOne = require("scripts/players/" ..playerOneName)
  end
  E:setScene(nextScene)
end

--- Auxiliary functions ---
function E:setScene(sceneName)
  currentScene = sceneName
  self.scenes[currentScene]:load()
end

return E
