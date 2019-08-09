class Politician < ApplicationRecord
 has_one :rating

  def update_rating(rating)
    self.rating.rating = rating.rating
    self.rating.games_played = rating.games_played
    self.rating.save!
  end
end
