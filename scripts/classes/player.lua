Player = {}

function Player:new(playerName)
  local newPlayer =
  {
    name = playerName,
    hp = 100,
    special = 0
  }
  self.__index = self
  setmetatable(newPlayer, self)
  return newPlayer
end

function Player:load() end
function Player:update() end
function Player:draw() end

return Player
