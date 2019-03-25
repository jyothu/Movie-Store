# == Schema Information
#
# Table name: stars
#
#  id          :integer          not null, primary key
#  name        :string
#  role        :integer          default("hero")
#  age         :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# Model for star which has many movie stars and movies through movie stars
class Star < ApplicationRecord
  has_many :movie_stars
  has_many :movies, through: :movie_stars
  enum role: { hero: 0, heroine: 1, director: 2, producer: 3, supporting_actor: 4 }
  validates :name, :role, :age, presence: true
end
