class Movie < ApplicationRecord
  has_many :movie_stars
  has_many :stars, through: :movie_stars
  has_many :comments
  has_attached_file :wallpaper, styles: { medium: '200x200', thumb: '100x100>' }
  validates_attachment_content_type :wallpaper, presence: true,
  content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  validates :name,  presence: true, length: {minimum: 3, maximum: 25}
  validates :release_date, :short_description, :genre, :age_bar, presence: true
end
