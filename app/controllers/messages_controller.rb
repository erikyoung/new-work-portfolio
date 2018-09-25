class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	
	def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.contact_me(@message).deliver
      flash[:notice] =  "Message received, thanks!"
    else
      flash[:alert] = "There was an error sending your message."
    end
    render :new
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message, :address)
  end
end



