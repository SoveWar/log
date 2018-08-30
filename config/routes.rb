Rails.application.routes.draw do

  root :to => "clients#index"
  
  resources :windows_events
  resources :events
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
