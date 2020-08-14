class Album < ApplicationRecord
    belongs_to :user
    has_many :photos, through: :ais,dependent: :destroy
    has_many :ais
    has_many :reacts, as: :reaction


    # Validate
    validates :title, presence: { message: "can't be blank" },   length: { in: 4..140,message: "minimum four characters" }
    validates :description, presence: true,  length: { maximum: 300 } 
    validates :source, presence: true
    validates :status, presence: true   
  
end
