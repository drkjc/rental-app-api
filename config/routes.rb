Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do

    resources :items 

    resources :users do 
      resources :shelves do 
        resources :items
      end
    end

    resources :carts  do 
      resources :items 
    end

    resources :shelves do 
      resources :items
    end

  end 

end
