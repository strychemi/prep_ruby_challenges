def init_game(players, limit)
  current_count = 1
  current_player = 1
  forward = true

  while current_count <= 100
    #check counting state (forward or backward)
    if forward
      forward = false if current_count % 7 == 0
      puts "player #{current_player} says: #{current_count}"
    else
      forward = true if current_count % 7 == 0
      puts "player #{current_player} says: #{current_count}"
    end

    #based on counting direction, count appropriately
    if forward
      if current_count % 11 == 0
        current_player = (current_player + 2) % players
      else
        current_player = (current_player + 1) % players
      end
    else
      if current_count % 11 == 0
        current_player = (current_player - 2) % players
      else
        current_player = (current_player - 1) % players
      end
    end

    #add the count
    current_count += 1
  end
end

init_game(10, 100)
