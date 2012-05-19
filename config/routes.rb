Bassein::Application.routes.draw do
  root :to=>'bassein#show'
  #resources :bassein1 , :path_names => {:show => 'sostav_b',:edit=> 'izmenenie_b' } ,:controller => 'bassein'
  resources :bassein1 ,:controller => 'bassein', :only=>[:show, :update]

  #match '/sostav_b', :to=>'bassein#show'
  match '/spisok_i', :to=>'instruktory#spisok_i'
  match '/izmenenie_i', :to=> 'instruktory#izmenenie_i'
  match '/novyi_i', :to=>'instruktory#novyi_i'
  match '/spisok_g', :to=> 'gruppy#spisok_g'
  match '/novaia_g', :to=> 'gruppy#novaia_g'
  match '/sostav_g', :to=> 'gruppy#sostav_g'
  match '/izmenenie_b', :to=>'bassein#izmenenie_b'
  #match "/bassein1s/:id" => "bassein#izmenenie_b"
  #match "/bassein1s/:id/show" => "bassein#izmenenie_b"


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
