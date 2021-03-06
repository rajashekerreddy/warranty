require 'resque/server'
Warranty::Application.routes.draw do
 
  # map.resources :all_registrations, :has_many => :image_tables

# Of course, you need to substitute your application name here, a block
# like this probably already exists.

  mount Resque::Server.new, at: "/resque"

  resources :college_fees

  resources :attendences do
  member do
    get :get_attendence_percentage
    get :get_attendence_sheet
  end
  collection do
    get :student_percentage
    post :create_model_name
    post :create_attendence
    get :get_attendence_sheet
    get :move_to_next_year
    get :attendence_child
    get :graph_att
    #   get :get_attendence_percentage
   end
  end

  resources :college_masters

  devise_for :users

  root:to => "all_registrations#new"
  resources :employees

  resources :numbers

  resources :childmasters

  resources :profilemasters

  resources :subjects

  resources :semesters

  resources :groups

  resources :years


  resources :all_registrations do
collection do
  get "get_groups_years"
end
end

  resources :sub_categories

  resources :categories

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
