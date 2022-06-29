Rails.application.routes.draw do
  resources :doctors
  # resources :management_plans
  # resources :services
  # resources :service_lists
  # resources :remedy_actions
  # resources :final_diags
  # resources :diagnostics
  # resources :physics_support_checks
  # resources :anemnesas
  # resources :records
  # resources :record_lists
  # resources :patients
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      get '/patients', to: 'ops#index'
      get '/patients/:name', to: 'ops#show'
      post '/patients', to: 'ops#register_patient'
    end
  end
end
