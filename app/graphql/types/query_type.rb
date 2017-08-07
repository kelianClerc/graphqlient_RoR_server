QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'Root of the schema'
  field :users do
    type types[UserType]
    description 'List of all users'
    resolve -> (obj, args, ctx) {
      User.all
    }
  end
  field :user do
    type UserType
    argument :id, !types.ID
    description'List of all users'
    resolve -> (obj, args, ctx) {
      User.find(args['id'])
    }
  end
  field :actions do
    argument :user_id, types.ID
    type types[ActionType]
    description'List of all actions'
    resolve -> (obj, args, ctx) {
      if args[:user_id]
        Action.where("user_id = ?", args[:user_id])
      else
        Action.all
      end
    }
  end
  field :action do
    argument :id, !types.ID
    type ActionType
    description'List of all actions'
    resolve -> (obj, args, ctx) {
      Action.find(args['id'])
    }
  end
  field :items do
    argument :action_id, types.ID
    type types[ItemType]
    description'List of all items'
    resolve -> (obj, args, ctx) {
      if args[:action_id]
        Item.where("action_id = ?", args[:action_id])
      else
        Item.all
      end
    }
  end

  field :item do
    argument :id, !types.ID
    type ItemType
    description'List of all items'
    resolve -> (obj, args, ctx) {
      Item.find(args['id'])
    }
  end
end
