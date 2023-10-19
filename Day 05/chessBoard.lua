--[[
  The challenge is for you to visually recreate a chessboard
  using the knowledge acquired so far.
]]

-- Define the chessboard using UTF-8 chess piece symbols
local board = {}
board[1] = {"♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖"}
board[2] = {"♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"}
board[3] = {}
board[4] = {}
board[5] = {}
board[6] = {}
board[7] = {"♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎"}
board[8] = {"♜", "♞", "♝", "♛", "♚", "♝", "♞", "♜"}

-- Display the chessboard
for _, row in pairs(board) do
  local rowString = ""
  for _, piece in pairs(row) do
    rowString = rowString .. piece .. " "
  end
  print(rowString)
end
