class ActionSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :items
  link(:self) { user_actions_url(object) }
end