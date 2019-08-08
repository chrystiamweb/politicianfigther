class Politician < ApplicationRecord
 has_one :rating

  def update_rating(rating)
    self.rating.rating = rating.rating
    puts rating.rating    
    self.rating.save!
  end
end
