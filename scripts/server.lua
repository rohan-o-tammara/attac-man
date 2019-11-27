local txCh = love.thread.getChannel('tx')
local rxCh = love.thread.getChannel('rx')

local socket = require "socket"

local udp = socket.udp()

udp:settimeout(0)
udp:setsockname('*', 27272)

local txDt = 0.1 -- 10 transmissions per second
local t = os.clock()

while true do
  -- If packet received push to engine
  local rxPacket, msg_or_ip, port_or_nil = udp:receivefrom()
  if rxPacket then
    print('here4')
    rxCh:push(rxPacket)
  end
  -- If packet queued to send, then send
  if os.clock() - t >= txDt then
    if txCh:getCount() > 0 then
      print('here3')
      local txPacket = txCh:pop()
      udp:sendto(txPacket, msg_or_ip, port_or_nil)
    end
    t = os.clock()
  end
end
