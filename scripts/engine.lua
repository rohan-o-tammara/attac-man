local Noob = require "scripts/classes/noob"
local Scene = require "scripts/classes/scene"

local conn = { thread, txCh, rxCh }
local connThreadStarted

E = { scenes = {} }

function E:load()
  local sceneNames = love.filesystem.getDirectoryItems("scripts/scenes/")
  for i, s in ipairs(sceneNames) do
    local sceneName = string.sub(s, 1, -5)
    self.scenes[sceneName] = require("scripts/scenes/" ..sceneName)
    self.scenes[sceneName]:load()
  end
  nextScene = "menu"
  currentScene = nextScene
end

function E:update(dt)
  self.scenes[currentScene]:update(dt)
  if conn.thread then
      if conn.rxCh:getCount() > 0 then
        print('here1')
        rxDg = conn.rxCh:pop()
      if txDg then
        print('here2')
        conn.txCh:push(txDg)
        txDg = nil
      end
    end
    local connErr = conn.thread:getError()
    assert(not connErr, connErr)
  end
end

function E:draw()
  self.scenes[currentScene]:draw()
end

function E:mousereleased(x, y, button)
  self.scenes[currentScene]:mousereleased(x, y, button)
  if currentScene == "picker" then
    player = require("scripts/noobs/" ..playerName)
    currentScene = nextScene
  elseif currentScene == "menu" then
    if currentScene ~= nextScene then
      conn.thread = love.thread.newThread(threadFile)
      conn.thread:start()
      conn.txCh = love.thread.getChannel('tx')
      conn.rxCh = love.thread.getChannel('rx')
      if nextScene == "menu_sv" then iAmServer = true
      elseif nextScene == "menu_cl" then iAmServer = false end
      currentScene = nextScene
    end
  end
end

function E:textinput(txt)
  self.scenes[currentScene]:textinput(txt)
end

return E
