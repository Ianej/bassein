Pool1::Application.routes.draw do

  resources :groups#, only: :index, controller: 'groups'
  #delete 'groups/:id' , :to=>'groups#destroy'
  #get 'groups/new'
  #match 'groups/new', :to => 'groups#new'

  resource :pools#, as: "pools", :controller => 'pools'
  root :to => 'pools#show'
  #resources :bassein1 , :path_names => {:show => 'sostav_b',:edit=> 'edit' } ,:controller => 'bassein'
  #get '/pools/:id', as: :pool, to: 'pools#show'
  resources :instructors#, :controller => 'instructors'
  #resources :bassein1s, :collection => { :spisok => :get }
  #match '/sostav_b', :to=>'bassein#show'
  #match '/show', :to=>'instructors#show'
  #match '/edit', :to=> 'instructors#edit'
  #match '/new', :to=>'instructors#new'

  #match '/index', :to => 'groups#index'
  #match '/new', :to => 'groups#new'
  #match '/show', :to => 'groups#show'
  #match '/edit', :to => 'bassein#edit'
  #match "/bassein1s/:id" => "bassein#edit"
  #match "/bassein1s/:id" => "bassein#edit"


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
  # just remember to delete public/index_.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
