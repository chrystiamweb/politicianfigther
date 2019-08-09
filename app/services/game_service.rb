class GameService
    require 'elo'
    
    def run_game(winner, loser)
        player_winner = Elo::Player.new(rating: winner.rating.rating, games_played: winner.rating.games_played)
        player_loser = Elo::Player.new(rating: loser.rating.rating, games_played: loser.rating.games_played)   
        player_winner.wins_from(player_loser)
        winner.update_rating(player_winner)
        loser.update_rating(player_loser)
    end
end