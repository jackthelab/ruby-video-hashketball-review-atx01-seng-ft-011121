# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(name)
  game_hash.each do |i|
    i[1][:players].each do |x|
      if x[:player_name] == name
        return x[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |key, value|
    game_hash[key][:players].each do |i|
      if i[:player_name] == name
        return i[:shoe]
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |key, value|
    if game_hash[key][:team_name] == name
      return game_hash[key][:colors]
    end
  end
end

def team_names
  game_hash.map { |key, value| game_hash[key][:team_name] }
end

def player_numbers(name)
  player_numbers = []
  game_hash.each do |key, value|
    if game_hash[key][:team_name] == name
      game_hash[key][:players].each do |i|
        player_numbers.push(i[:number])
      end
    end
  end
  player_numbers
end

def player_stats(name)
  game_hash.each do |key, value|
    game_hash[key][:players].each do |i|
      if i[:player_name] == name
        return i
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoes = 0
  biggest_shoes_rebounds = 0
  
  game_hash.each do |key, value|
    game_hash[key][:players].each do |i|
      if i[:shoe] > biggest_shoes
        biggest_shoes = i[:shoe]
        biggest_shoes_rebounds = i[:rebounds]
      end
    end
  end
  
  biggest_shoes_rebounds
end