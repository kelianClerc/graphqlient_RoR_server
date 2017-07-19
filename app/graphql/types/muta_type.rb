MutaType = GraphQL::ObjectType.define do
  name "MutationPost"
  description "Mutation allow to update data."

  field :AddAge do
    argument :id, !types.ID
    type UserType
    resolve -> (obj, args, ctx) {
      toUpdate = User.find(args[:id])
      toUpdate.age = toUpdate.age + 1
      toUpdate.save
      return toUpdate
    }
  end
end
