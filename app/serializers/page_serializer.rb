class PageSerializer < ActiveModel::Serializer
  attributes :name, :items

  def items
    object.make_items
  end
end
