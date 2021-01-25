Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :books do
      resources :reviews
    end
  end
end
#can only access reviews nested under book
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
