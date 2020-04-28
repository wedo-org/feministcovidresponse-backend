class Item < ApplicationRecord
  belongs_to :progressive
  has_many :country_items
  has_many :countries, through: :country_items
  has_many :theme_items
  has_many :themes, through: :theme_items
  has_many :category_items
  has_many :categories, through: :category_items
  has_many :type_items
  has_many :types, through: :type_items

  validates_presence_of :title, :description, :link, :date
end
