class User < ApplicationRecord
  has_many :goals, dependent: :destroy
  accepts_nested_attributes_for :goals # gives us a writer that allows us
                                   # to update the child class through 
                                   # the parent
end


# we use the user model to update goals