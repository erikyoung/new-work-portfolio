class MessageMailer < ApplicationMailer
  default from: "info@erikyoungwebdesigner.ml"

  def contact_me(message)
    @message = message
    mail to: "erik.young@rmit.edu.vn", subject: "Contact Form Message"
  end
end
