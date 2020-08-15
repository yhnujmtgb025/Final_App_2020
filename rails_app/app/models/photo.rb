class Photo < ApplicationRecord
    belongs_to :user
    has_many :albums, through: :ais,dependent: :destroy
    has_many :ais
    has_many :reacts, as: :reaction
end
