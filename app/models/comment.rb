# Model for Comment which belongs to the user and movie
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
end
