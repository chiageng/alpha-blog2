Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#home"
  get "about", to: "home#about"
  get "nextpage", to: "home#nextpage"
  resources :articles 
end
