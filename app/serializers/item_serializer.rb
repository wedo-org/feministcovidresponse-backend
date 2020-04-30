class ItemSerializer < ActiveModel::Serializer
  attributes :title_en, :title_es, :title_fr, :description_en, :link, :types, :progressive, :eventDate, :page, :countries, :description_es, :description_fr
  
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
