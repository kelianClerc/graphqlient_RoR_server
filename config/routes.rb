Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  get "/graphql/test"
  root "graphql#test"


  resources :users, only: [:index, :show] do
    resources :actions, only: [:index, :show] do
      resources :items, only: [:show, :index]
    end
  end

  resources :actions, only: [:index, :show] do
      resources :items, only: [:index, :show]
  end

  resources :items, only: [:index, :show]


  resources :queries, via: [:post, :options]
end
