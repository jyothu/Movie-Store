class Movie < ActiveRecord::Base
    
has_many :stars
has_attached_file :photo

end
