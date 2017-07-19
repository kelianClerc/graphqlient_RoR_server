class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :firstname, :age
  has_many :actions, serializer: ActionSerializer
  link(:self) { user_url(object) }
end