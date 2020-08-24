class Album < ApplicationRecord
    has_many :ais
    has_many :photos, through: :ais


    belongs_to :user
    has_many :reacts, as: :reaction


    mount_uploader :source, PictureUploader
    default_scope -> { order(created_at: :desc) }

   

   

    # Validate
    # validates :title, length: { in: 20..140,message: "minimum four characters" }
    # validates :description, presence: true,  length: { in: 20..255 }
    # validates :status, presence: true   
  
end

