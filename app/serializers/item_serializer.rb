class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :types
  
  def types
    object.types.map{|type| type.name}
  end

end
