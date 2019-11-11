local P = require "scripts/classes/player"

--- Constants ---
WHITE = {1, 1 ,1}
BLACK = {0, 0, 0}
GRAY = {0.5, 0.5, 0.5}

--- Variables ---
currentScene = ""
nextScene = ""
playerOneName = ""
playerTwoName = ""
playerOne = Player:new()
playerTwo = Player:new()
