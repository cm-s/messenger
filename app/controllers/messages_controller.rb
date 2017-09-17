class MessagesController < ApplicationController
	def create
		@message = Message.new(message_params)
		if @msesage.save!
			puts "MESSAGE CREATED"
			ApplicationCable.server.broadcast 'conversation_channel',
				message: @message.content
		else
			flash[:error] = "The message couldn't be created"
		end
	end

	private

	def message_params
		params.require(:message).permit(:content)
	end
end
