class Item < ApplicationRecord
  after_initialize :init
  belongs_to :progressive
  belongs_to :category
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

  def make_date
    if self.date
      return self.date 
    else 
      return nil 
    end
  end

  def make_countries
    self.countries.map{|c| c.name}
  end

  def init
    self.date = 01 if self.date.nil?          #will set the default value only if it's nil
end
end