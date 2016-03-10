Rails.application.routes.draw do

  resources :salaries

   

  # You can have the root of your site routed with "root"
  root 'salaries#new'

  
end
