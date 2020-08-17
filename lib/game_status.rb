board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
[0, 1, 2],
[3, 4, 5], #Middle row
[6, 7, 8], #Bottom row
[0, 3, 6], #Left row
[1, 4, 7], #Middle row
[2, 5, 8], #Right row
[0, 4, 8], #Left diagonal
[2, 4, 6] #Right diagonal
]


def won?(board)
WIN_COMBINATIONS.each do |win_combination|

win_index_1 = win_combination[0]
win_index_2 = win_combination[1]
win_index_3 = win_combination[2]

position_1 = board[win_index_1]
position_2 = board[win_index_2]
position_3 = board[win_index_3]

  if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
    return win_combination
  end
end
return false
end
