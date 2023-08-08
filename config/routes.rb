Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 get 'home', to: 'home#index', as: 'home'
 patch 'update_avatar', to: 'users#update_avatar', as: :update_avatar




   devise_for :users, controllers: { sessions: 'custom_sessions' }
post '/upload_avatar', to: 'users#upload_avatar'

end
