class Actor < ActiveRecord::Base
  has_many :roles
  # def roles
  #   Role.where(:actor_id => self.id)
  # end

  validates :name, :uniqueness => true
  validates :name, :dob, :presence => true
end
