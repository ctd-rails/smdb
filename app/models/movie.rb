class Movie < ActiveRecord::Base
  belongs_to :director
  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  has_many :roles
  # def roles
  #   Role.where(:movie_id => self.id)
  # end

  has_many :votes

  validates :title, :uniqueness => true
  validates :title, :presence => true
  validates :director_id, :presence => true
  validates :year, :presence => true


  def users
    # return a list of users
    list_of_users = []
    self.votes.each do |vote|
      list_of_users << vote.user
    end

    return list_of_users
  end
end
