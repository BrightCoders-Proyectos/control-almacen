Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admins
=======
  resources :warehouses
>>>>>>> 8666aae... Add warehouses scaffold
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
