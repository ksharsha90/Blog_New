Rails.application.routes.draw do

  #get 'sessions/new'
  
  resources :users
  
  resources :articles do
  	resources :comments
  	collection do
  		get :search #creates a new path for the searching
  	end
  end

  resources :subscribers

  resources :sessions

  root 'welcome#index'
end
