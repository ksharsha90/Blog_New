Rails.application.routes.draw do

  resources :users
  resources :articles do
  	resources :comments
  	collection do
  		get :search #creates a new path for the searching
  	end
  end

  resources :subscribers

  root 'welcome#index'
end
