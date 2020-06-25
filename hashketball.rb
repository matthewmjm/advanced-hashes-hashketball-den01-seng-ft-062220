require 'pry'
#game_hash
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
  

  #helper method - combine home and away players
  def both_teams
    return all_players = game_hash[:home][:players] + game_hash[:away][:players]
  end
  
  #num_points_scored  
  def num_points_scored(name)
    both_teams.each do |player|
      return player[:points] if player[:player_name] == name
    end
  end

  #num_points_scored  
  def shoe_size(name)
    both_teams.each do |player|
      return player[:shoe] if player[:player_name] == name
    end
  end

  #team_colors
  def team_colors(team)
    if team == game_hash[:away][:team_name]
      return game_hash[:away][:colors]
    else
      return game_hash[:home][:colors] 
    end 
  end

  #team_names
  def team_names
    teams = []
    teams << game_hash[:home][:team_name] << game_hash[:away][:team_name]
  end

 #player_numbers
  def player_numbers(team)
    jerseys = []
    if game_hash[:away][:team_name] == team
      game_hash[:away][:players].map do |player|
        jerseys = jerseys << player[:number]
      end
    else
      game_hash[:home][:players].each do |player|
        jerseys = jerseys << player[:number]
      end
    end 
    jerseys
  end

  ##player_stats
  def player_stats(name)
    both_teams.each do |player|
      return player if player[:player_name] == name
    end 
  end

  ##player_stats
  def big_shoe_rebounds(name)
    both_teams.each do |player|
      return player if player[:player_name] == name
    end 
  end

  #big_shoe_rebounds
  def big_shoe_rebounds
    largest_shoe = 0
    result_rebounds = 0
    both_teams.each do |player|
      if player[:shoe] > largest_shoe
        largest_shoe = player[:shoe]
        result_rebounds = player[:rebounds]
      end
    end 
    result_rebounds
  end