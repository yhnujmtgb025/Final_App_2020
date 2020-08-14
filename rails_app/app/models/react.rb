class React < ApplicationRecord
    belongs_to :reaction, polymorphic: true
end
