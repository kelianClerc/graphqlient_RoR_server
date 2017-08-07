class ActionSerializer < ActiveModel::Serializer
  attributes :id, :title,  :id, :title, :user_id, :created_at, :updated_at, :price, :version, :fat_percent, :origin, :isVegan, :code, :picture, :detail_picture, :skill_needed, :requires_oven
  has_many :items, serializer: ItemIdSerializer
end