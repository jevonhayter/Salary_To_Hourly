Rails.application.routes.draw do

  resources :salaries

  root 'salaries#new'

  
end
