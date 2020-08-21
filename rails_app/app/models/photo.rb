class Photo < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :albums
    has_many :reacts, as: :reaction

    # accepts_nested_attributes_for :albums
    mount_uploader :source, PictureUploader
    default_scope -> { order(created_at: :desc) }


#validate 
validates :description, presence: true,  length: { in: 20..255 }
end
