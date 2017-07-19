ItemType = GraphQL::ObjectType.define do
  name "Item"
  description "Contains a detail of the action done by an user"
  field :id, types.ID, "Id of the item"
  field :name, types.String, "Description of the item"
  field :duration, types.Float, "Duration of the item"
  field :created_at, types.String, "Date of the item"
  field :action, ActionType, "Action where this item belongs"
end