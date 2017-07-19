class ActionSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :items
  belongs_to :user
  link(:self) { user_actions_url(object) }
end