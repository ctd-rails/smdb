class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  validates :user_id, :movie_id, :presence => true
  validate :user_can_only_vote_once_per_movie, :user_can_only_vote_three_times

  # create a validation to make sure a user cannot vote for the same movie more than once
  def user_can_only_vote_once_per_movie
    matched_votes = Vote.where(:user_id => self.user_id, :movie_id => self.movie_id)
    if matched_votes.empty? == false
      errors.add(:number_of_votes, "is limited to one per movie per user")
    end
  end

  # create another validation to ensure that every user only gets three votes
  def user_can_only_vote_three_times
    num_votes = Vote.where(:user_id => self.user_id)
    if num_votes.length >= 3
      errors.add(:number_of_votes, "cannot exceed three per user")
    end
  end



end
