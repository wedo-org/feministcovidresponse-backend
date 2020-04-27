class ThemeItem < ApplicationRecord
  belongs_to :item
  belongs_to :theme
end
