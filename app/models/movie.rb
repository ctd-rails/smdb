class Movie < ActiveRecord::Base
  belongs_to :director
  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  has_many :roles
  # def roles
  #   Role.where(:movie_id => self.id)
  # end
end
