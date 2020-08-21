class Ai < ApplicationRecord
    belongs_to :photo
    belongs_to :album 
    
    # mount_uploader :picture, PictureUploader
end
    