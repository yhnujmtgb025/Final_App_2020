class Album < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :photos
    has_many :reacts, as: :reaction


    accepts_nested_attributes_for :photos
    mount_uploader :source, PictureUploader

   

   

    # Validate
    validates :title, length: { in: 20..140,message: "minimum four characters" }
    validates :description, presence: true,  length: { in: 20..255 }
    validates :status, presence: true   
  
end

