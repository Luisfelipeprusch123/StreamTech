Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 get 'home', to: 'home#index', as: 'home'
 get '/search_videos', to: 'home#index', format: 'js'
 patch 'update_avatar', to: 'users#update_avatar', as: :update_avatar




   devise_for :users, controllers: { sessions: 'custom_sessions' }
post '/upload_avatar', to: 'users#upload_avatar'



# rotas do tailwindcss
get '/tailwindcss/base', to: 'tailwindcss#base'
get '/tailwindcss/utilities', to: 'tailwindcss#utilities'
get '/tailwindcss/components', to: 'tailwindcss#components'
  end
