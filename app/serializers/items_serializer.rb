class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :link, :types
  
end
