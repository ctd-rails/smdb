class Movie < ActiveRecord::Base
  def director
    # should output the movie's director
    return Director.find_by_id(self.director_id)
  end
end
