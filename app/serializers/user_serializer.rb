class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :firstname, :age
  has_many :actions
  link(:self) { user_url(object) }
end