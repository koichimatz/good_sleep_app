class Sleep < ApplicationRecord
    
    belongs_to :user
    attachment :image
end
