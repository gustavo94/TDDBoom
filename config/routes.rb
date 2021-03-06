Rails.application.routes.draw do
  get "/", to: "application#index", as: :home
  get "/settings", to: "application#settings", as: :settings
  get "/play/:team/:map", to: "game#play", as: :play
  get "/assign_map/:team/:map", to: "game#assign_map", as: :assign_map
  get "/play/:team", to: "game#chosen_map", as: :chosen_map
  resources :teams
  post "/team/destroy", to: "teams#destroy", as: :delete_team
  post "/team/update_resources", to: "teams#update_resources", as: :update_resources
  post "/team/reset_resources", to: "teams#reset_resources", as: :reset_resources
  post "/game/reset", to: "game#reset", as: :reset_game
  post "/game/end_game", to: "game#end_game", as: :end_game
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
