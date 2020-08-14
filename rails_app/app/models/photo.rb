class Photo < ApplicationRecord
    belongs_to :user 
    has_many :albums, through: :ais
    has_many :ais
    has_many :reacts, as: :reaction, dependent: :destroy
end
