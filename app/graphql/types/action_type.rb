ActionType = GraphQL::ObjectType.define do
  name "Action"
  description "Contains the action done by an user"
  field :id, types.ID, "Id of the action"
  field :title, types.String, "Description of the action"
  field :user, UserType, "User who did the action"
  field :items, types[ItemType]
end