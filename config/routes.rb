Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'

  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  get '/recipes', to: 'recipes#index'
  post '/recipes', to: 'recipes#create'

  post '/favorites', to: "favorites#create"
  delete '/favorites/:user_id/:recipe_id', to: "favorites#destroy"
end
