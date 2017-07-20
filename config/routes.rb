Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  get "/graphql/test"
  root "graphql#test"


  resources :users do
    resources :actions
  end


  resources :queries, via: [:post, :options]
end
