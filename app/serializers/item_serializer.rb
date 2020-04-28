class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :types, :progressive, :eventDate, :page, :countries
  
  def types
    object.make_types
  end

  def progressive
    object.make_progressive
  end

  def eventDate
    object.make_date    
  end

  def page
    object.page.name
  end

  def countries
    object.make_countries
  end

end
