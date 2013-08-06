class Role < ActiveRecord::Base
  belongs_to :actor
  # def actor
  #   Actor.find_by_id(self.actor_id)
  # end

  belongs_to :movie
  # def movie
  #   Movie.find_by_id(self.movie_id)
  # end

  validates :character_name, :uniqueness => true
  validates :character_name, :presence => true
end
