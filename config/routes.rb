Rails.application.routes.draw do

  root   'static_pages#home'
  get    'signup'        => 'users#new'
  get    'login'         => 'sessions#new'
  post   'login'         => 'sessions#create'
  delete 'logout'        => 'sessions#destroy'
  get    'sageone_auth'  => 'sage_one#auth'
  get    'sageone_data'  => 'sage_one#data'
  get    'auth/callback' => 'sage_one#exchange_code_for_token'
  get    'call_api'      => 'sage_one#call_api'
  post   'call_api'      => 'sage_one#call_api'
  get    'renew_token'   => 'sage_one#renew_token'
  resources :users

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
