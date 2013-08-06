class Director < ActiveRecord::Base
  has_many :movies
  # def movies
  #   Movie.where(:director_id => self.id)
  # end

  validates :name, :uniqueness => true
  validates :name, :dob, :presence => true
end
