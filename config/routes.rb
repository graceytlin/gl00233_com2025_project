Rails.application.routes.draw do

  resources :timesheets
  devise_for :employees

  
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

end
