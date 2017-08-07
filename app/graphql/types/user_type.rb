UserType = GraphQL::ObjectType.define do
  name "User"
  description "Contains basic info about an user"
  field :id, types.ID, "Id of the user"
  field :name, types.String, "Name of the user"
  field :firstname, types.String, "First name"
  field :age, types.Int
  field :actions, types[ActionType]
end