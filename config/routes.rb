Rails.application.routes.draw do

  resources :articles do
  	resources :comments
  	collection do
  		get :search #creates a new path for the searching
  	end
  end

  root 'welcome#index'
end
