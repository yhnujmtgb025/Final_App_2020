class User < ApplicationRecord
    has_many :albums 
    has_many :photos

    validates :firstname, presence: true,  length: { maximum: 25 } 
    validates :lastname, presence: true,  length: { maximum: 25 } 
    validates :email, presence: true, uniqueness: true,  length: { maximum: 255 } 
    validates :password, presence: true, confirmation: true,  length: { maximum: 255 } 

end
