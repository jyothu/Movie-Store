class Movie < ApplicationRecord
  has_many :movie_stars
  has_many :stars, through: :movie_stars
  has_many :comments
  has_attached_file :wallpaper, styles: { medium: '200x200', thumb: '100x100>' }
  validates_attachment_content_type :wallpaper,
    content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
