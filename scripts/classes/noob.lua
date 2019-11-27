Noob = {}

function Noob:new(noobName)
  local newNoob =
  {
    name = noobName,
    x = 256,
    y = 241,
    hp = 100,
    sp = 0
  }
  self.__index = self
  setmetatable(newNoob, self)
  return newNoob
end

function Noob:load() end
function Noob:update() end
function Noob:draw() end

function Noob:move() end
function Noob:punch() end
function Noob:kick() end
function Noob:dodge() end
function Noob:special() end

return Noob
