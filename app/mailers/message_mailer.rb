class MessageMailer < ApplicationMailer
  default from: "info@erikyoungwebdesigner.ml"

  def contact_me(message)
    @message = message
    mail to: "youngerik26@gmail.com", subject: "Contact Form Message"
  end
end
