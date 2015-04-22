CityOfHope::Application.routes.draw do
  get "emails/create"
  root 'static_pages#home'

  match '/emails', to: 'emails#create', via: :post

  match 'about',      to: 'static_pages#about',        via: 'get'
  match 'sundays',    to: 'static_pages#sundays',      via: 'get'
  match 'vision',     to: 'static_pages#vision',       via: 'get'
  match 'contact',    to: 'static_pages#contact',      via: 'get'
  match 'communities',to: 'static_pages#communities',  via: 'get'
  match 'support',    to: 'static_pages#support',      via: 'get'
  match 'service',    to: 'static_pages#service',      via: 'get'
  match 'donate',     to: 'static_pages#donate',       via: 'get'
  match 'practice',   to: 'static_pages#practice',     via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
