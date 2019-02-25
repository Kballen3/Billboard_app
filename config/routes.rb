Rails.application.routes.draw do
  root 'artists#index'
  
  resources :artists do
    resources :songs
  end
  
  resources :songs do
    resources :billboard
  end
  
end

# root 'artists#index'