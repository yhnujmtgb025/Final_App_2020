class Photo < ApplicationRecord
    has_many :ais
    has_many :albums, through: :ais, dependent: :destroy
   


    belongs_to :user, counter_cache: :count_photos
    has_many :reacts, as: :reaction 
    # accepts_nested_attributes_for :albums
    mount_uploader :source, PictureUploader
    default_scope -> { order(created_at: :desc) }

   
   
 

#validate 
#  validates :description, presence: true,  length: { in: 20..255 }
#  validates :source, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end
