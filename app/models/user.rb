class User < ApplicationRecord
  has_many :goals, dependent: :destroy
  accepts_nested_attributes_for :goals # gives us a writer that allows us
  attr_accessor :completed_goals,:incomplete_goals                                 # to update the child class through 
                                   # the parent
  # PASS
  def update_score(additional_points)
    
    self.points += additional_points
  end

  # def mark_complete(goal)

  # end

  # def mark_incomplete(goal)
  # end
end


# we use the user model to update goals