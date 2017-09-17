Rails.application.routes.draw do
	root 'users#logon'
	post 'users/login' => 'users#login'
	resources :users, :only => [:new, :show, :create, :edit, :destroy] do
		resources :conversations, :only => [:index, :show, :new, :create, :destroy] do
			resources :messages, :only => [:create]
		end
	end
	mount ActionCable.server => '/cable'
end
