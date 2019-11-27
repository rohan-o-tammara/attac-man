--[[
-- Global variables
--]]

local Noob = require "scripts/classes/noob"

-- Default image sizes are 1024x576. If changed, use scale()
WIN_SZ = { X = 1024, Y = 576 }

WHITE = {1, 1 ,1}
BLACK = {0, 0, 0}
GRAY = {0.5, 0.5, 0.5}

-- Default values are initializations
currentScene = ""
nextScene = ""
playerName = ""
enemyName = ""
player = Noob:new()
enemy = Noob:new()
threadFile = ""
iAmServer = nil
txDg = nil
rxDg = nil
