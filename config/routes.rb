Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :users

  get 'events/:id/register', to: 'evets#register', as: 'register_to_events'
  post 'events/:id/register', to: 'events#register_user', as: 'register_user'

end
