Rails.application.routes.draw do
  	resources :categories
  	root to: "posts#index"
  	resources :posts
  	#resources :posts do
	#  get 'return_array', is_array: true
	#  get 'index', ui_params: [:filter, :search, :page]
	#end
	#resources :posts, only: [:index, :create, :update, :show, :destroy] do
    #  collection do
    #    get :search
    #  end
    #end
	

end
