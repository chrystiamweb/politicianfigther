class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :politician, foreign_key: true
      t.integer :rating
      t.integer :games_played

      t.timestamps
    end
  end
end
