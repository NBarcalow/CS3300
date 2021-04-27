Rails.application.routes.draw do
  root 'portfolio_projects#index'
  resources :portfolio_projects
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
