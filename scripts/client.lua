local txCh = love.thread.getChannel('tx')
local rxCh = love.thread.getChannel('rx')

local socket = require "socket"
local address, port = "localhost", 27272

local udp = socket.udp()

udp:settimeout(0)
udp:setpeername(address, port)

local txDt = 0.1 -- 10 transmissions per second
local t = os.clock()

while true do
  -- If packet received then push to engine
  local rxPacket, msg = udp:receive()
  if rxPacket then
    print('here6')
    rxCh:push(rxPacket)
  end
  -- If packet queued to send, then send
  if os.clock() - t >= txDt then
    if txCh:getCount() > 0 then
      print('here5')
      local txPacket = txCh:pop()
      udp:send(txPacket)
    end
    t = os.clock()
  end
end
