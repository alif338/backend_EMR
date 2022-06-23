Rails.application.routes.draw do
  resources :management_plans
  resources :services
  resources :service_lists
  resources :remedy_actions
  resources :final_diags
  resources :diagnostics
  resources :physics_support_checks
  resources :anemnesas
  resources :records
  resources :record_lists
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
