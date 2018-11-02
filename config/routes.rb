Rails.application.routes.draw do
  get 'pages/home'

  resources :properties do
    collection { post :update_stage }
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
