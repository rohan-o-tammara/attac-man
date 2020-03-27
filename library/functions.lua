--[[
-- Global Helper Functions
--]]

-- New box
function Box(x1, y1, x2, y2) return scale({x1, y1, x2, y2}) end

-- Check if cursor is within bounds of the box
function isCursorIn(x, y, box)
  if (x >= box[1]) and (y >= box[2]) and
     (x <= box[3]) and (y <= box[4]) then
    return true
  else
    return false
  end
end

-- Scale box sizes keeping aspect ratio to 16:9
function scale(box)
  local newBox = {}
  newBox[1] = math.floor(box[1] * (WIN_SZ.X/1024))
  newBox[2] = math.floor(box[2] * (WIN_SZ.Y/576))
  newBox[3] = math.floor(box[3] * (WIN_SZ.X/1024))
  newBox[4] = math.floor(box[4] * (WIN_SZ.Y/576))
  return newBox
end
