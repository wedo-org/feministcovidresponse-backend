class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :items, :status, :email

  def items
    resources = object.items.select{|item| item.page.name = 'resources'}.map{|i| ItemSerializer.new(i)}
    online = object.items.select{|item| item.page.name = 'online'}.map{|i| ItemSerializer.new(i)}
    response = object.items.select{|item| item.page.name = 'response'}.map{|i| ItemSerializer.new(i)}
    return {"items": [
      "resources": resources,
      "online": online,
      "response": response
    ]}
  end

end
