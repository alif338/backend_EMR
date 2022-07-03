Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  # resources :doctors
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
      get '/patients', to: 'ops#get_all_recorded_patients'
      get '/patients/:id', to: 'ops#get_patient_by_id'
      get '/nurses', to: 'ops#get_all_nurses'
      get '/records', to: 'ops#get_all_records'
      post '/patients', to: 'ops#register_new_patient'
      
      post '/nurses/record', to: 'nurses#create_new_record'
      post '/nurses/anemnesa', to: 'nurses#create_anemnesa'
      post '/nurses/physics_support_check', to: 'nurses#create_physics_support_check'
      post '/nurses/diagnostic', to: 'nurses#create_diagnostic'
      post '/nurses/management_plan', to: 'nurses#create_management_plan'
      post '/nurses/remedy_action', to: 'nurses#create_remedy_action'
      post '/nurses/medicine_receipt', to: 'nurses#create_medicine_receipt'
    end
  end
  get '/*a', to: 'application#not_found'
end
