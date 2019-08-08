module ApplicationHelper
  require 'elo'

  def random_game

  end

  def run_game(player_win, player_loser)
    winner = Elo::Player.new(rating: player_win.rating.rating, games_played: player_win.rating.games_played)
    loser = Elo::Player.new(rating: player_loser.rating.rating, games_played: player_loser.rating.games_played)   
    
    winner.wins_from(loser)
    player_win.update_rating(winner)
    player_loser.update_rating(loser)
  end

  
  
end
