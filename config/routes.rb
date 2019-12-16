Rails.application.routes.draw do

  resources :shifts
  resources :timesheets

  devise_for :employees

  
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  get '/timesheets/:id', to: 'timesheets#show.html.erb'

end
