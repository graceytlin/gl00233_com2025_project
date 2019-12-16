Rails.application.routes.draw do

  devise_for :employees

  resources :shifts
  
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

end
