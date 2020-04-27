class Theme < ApplicationRecord
    has_many :theme_items
    has_many :items, through: :theme_items

    validates_presence_of :name 
end
