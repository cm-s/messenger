class ConversationsController < ApplicationController
	def show
		@user = User.find_by(id: readURI(2))
		@conversation = Conversation.find_by({user_id: @user.id, id: readURI(4)})
	end

	def index
		@user = User.find_by(id: readURI(2))
		@conversations = Conversation.all
		@conversation = Conversation.new()
	end

	def new
		@conversation = Conversation.new()
	end
	def create
		@conversation = Conversation.new(conversation_params)
		if @conversation.save!
			puts "CONVERSATION CREATED"
		else
			redirect_to(new_user_conversation_url)
		end
	end

	private

	def conversation_params
		params.require(:conversation).permit(:recipients)
	end
end
