class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	
		def create
    @message = Message.new(message_params)

    if @message.valid?
      
      
        redirect_to new_message_url
     

      
      flash[:notice] =  "Message received, thanks!"
    else
      flash[:notice] = "There was an error sending your message."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end



