Rails.application.routes.draw do
  resources :premios
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "dashboard#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
