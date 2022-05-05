Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  resources :comics, only: [:new,:index,:show,:edit,:create,:destroy,:update] do
    
 
end
