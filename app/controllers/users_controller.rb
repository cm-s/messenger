class UsersController < ApplicationController
	current_user = nil

	def logon
		@user = User.new()
	end

	def login
		@user = User.new(login_params)
		if @user = User.find_by(user_name: @user.user_name)
			redirect_to(user_conversations_url({user_id: @user.id}))
		else
			puts "CLIENT REDIRECTED"
			redirect_to(root_url)
		end
	end

	def new
		@user = User.new()
	end

	def create
		@user = User.new(signup_params)
		if @user.save!
			redirect_to( user_url({id: @user}), :notice => "Sie haben sich erfolgreich angemeldet!" )
		else
			redirect_to(new_user_url)
		end
	end

	def show
		@user = User.find_by(id: readURI(2))
	end

	private

	def signup_params
		params.require(:user).permit(:user_name, :password, :first_name, :last_name)
	end

	def login_params
		params.require(:user).permit(:user_name, :password)
	end
end
