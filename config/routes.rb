Rails.application.routes.draw do
  devise_for :users
 
  root to: "training_records#index"
  resources :training_records
end
