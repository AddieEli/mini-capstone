class CategoryBee < ApplicationRecord
    belongs_to :bee
    belongs_to :category 

    validates :url, presence: true
   
end
