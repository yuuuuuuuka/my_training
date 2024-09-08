Rails.application.routes.draw do
  devise_for :users
 
  root to: "recordss#index"
  resources :records 
end
