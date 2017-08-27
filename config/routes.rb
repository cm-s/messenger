Rails.application.routes.draw do
	root 'users#logon'
	post 'users/login' => 'users#login'
	resources( :users, :only => [:new, :show, :create, :edit, :destroy] ) do
		resources( :conversations, :only => [:index, :show, :new, :create, :destroy] )
	end
end
