# Model for the user
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  validates :email, :password, :first_name, :last_name, presence: true

  def fullname
    [first_name, last_name].join ' '
  end
end
