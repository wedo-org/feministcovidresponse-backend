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

  def make_types
    if self.types.length > 1 
      return self.types.map{|t| t.name}
    else 
      return nil 
    end
  end

  def make_progressive
    if self.progressive
      return self.progressive.name
    else 
      return nil
    end
  end
end
