class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :types, :progressive, :eventDate, :category, :countries
  
  def types
    object.make_types
  end

  def progressive
    object.make_progressive
  end

  def eventDate
    object.make_date    
  end

  def category
    object.category.name
  end

  def countries
    object.make_countries
  end

end
