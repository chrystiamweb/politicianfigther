class PoliticiansController < ApplicationController
  before_action :set_politician, only: [:show, :edit, :update, :destroy]

  # GET /politicians
  # GET /politicians.json
  def index
    @player_one = Politician.find(rand(1..Politician.count))
    @player_two = Politician.where.not(id: @player_one.id).sample
  end

  def ranking
    @rankings = Rating.all.order(games_played: :desc)
  end

end
