Rails.application.routes.draw do
	# except expects an array
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # get 'pages/home'

  get 'About Me' , to: 'pages#about'

  get 'Contact' , to: 'pages#contact'

  resources :blogs do 
  	member do 
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'pages#home'
  # it is a route to home or whatever

end
