class Director < ActiveRecord::Base
  def movies
    # return all movies directed by this director
    Movie.where(:director_id => self.id)
  end
end
