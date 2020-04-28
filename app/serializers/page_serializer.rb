class PageSerializer < ActiveModel::Serializer
  attributes :name, :available_categories, :available_countries, :items

  def items
    object.make_items
  end

  def available_categories
    object.items.map{|i| i.categories.map(&:name)}.flatten.uniq.sort
  end

  def available_countries
    object.items.map{|i| i.countries.map(&:name)}.flatten.uniq.sort
  end
end
