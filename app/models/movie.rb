class Movie < ApplicationRecord
    
has_many :stars
has_attached_file :photo

end
