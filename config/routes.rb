Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do

    resources :items 

    get '/carts/:id', to: 'carts#show', as: 'cart'
    resources :carts, except: [:show]

    resources :shelves do 
      resources :items
    end

  end 

end
