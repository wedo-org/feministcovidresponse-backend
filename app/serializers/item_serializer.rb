class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :types, :progressive
  
  def types
    object.make_types
  end

  def progressive
    object.make_progressive
  end

end
