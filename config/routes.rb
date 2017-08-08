Rails.application.routes.draw do
  	resources :categories
    resources :tags
    resources :taggings
  	root to: "posts#index"
  	resources :posts
  	#resources :posts do
	  #  get 'return_array', is_array: true
	  #  get 'index', ui_params: [:filter, :search, :page]
	  #end
    
    resources :posts do
      #resources :tags do
        
      #end
    end
    #get 'tags/:body', :to => 'tags#receive'#ui_params: [:body],
      
    
    #get 'receive/:body', to: :receive, controller: 'tags'

    #get "receive", to: 'tags#receive', as: 'receive/:body'#,controller: 'tags'
    
    get "receive/:body", to: 'tags#receive',as: 'receive'
    
    #resources :tags#, only: [:index,:show, :new, :create, :receive] do
      #get 'receive', param: :body, ui_params: [:body]
    #get 'tags/:id'#, :to => 'tags#show', is_array: false
    #end

end
