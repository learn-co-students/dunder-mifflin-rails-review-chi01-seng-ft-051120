Rails.application.routes.draw do
  get 'dogs/order', to: 'dogs#order', as: 'order_dogs'
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
