class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :items, :status, :email

  def items
    object.items.map do |item|
      ItemSerializer.new(item)
    end
  end

end
