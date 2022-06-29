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
      get '/patients', to: 'ops#get_all_recorded_patients'
      get '/patients/:id', to: 'ops#get_patient_by_id'
      get '/nurses', to: 'ops#get_all_nurses'
      post '/patients', to: 'ops#register_new_patient'

      post '/nurses/anemnesa/:record_id', to: 'nurses#create_anemnesa'
      post '/nurses/physics_support_check/:record_id', to: 'nurses#create_physics_support_check'
      post '/nurses/diagnostic/:record_id', to: 'nurses#create_diagnostic'
      post '/nurses/management_plan/:record_id', to: 'nurses#create_management_plan'
      post '/nurses/remedy_action/:record_id', to: 'nurses#create_remedy_action'
      post '/nurses/medicine_receipt/:patient_id', to: 'nurses#create_medicine_receipt'
    end
  end
end
