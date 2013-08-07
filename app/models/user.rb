class User < ActiveRecord::Base
  validates :name, :uniqueness => true
  # validate :username_must_be_unique
  # def username_must_be_unique
  #   others = User.where(:name => self.name)
  #   if others.empty? == false
  #     errors.add(:unique_username, "is required.")
  #   end
  # end

  validates :name, :presence => true
  validates :name, :format => { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  has_secure_password

end
