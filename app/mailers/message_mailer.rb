class MessageMailer < ApplicationMailer
  default from: 'erik.young@rmit.edu.vn'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @message = message
    
    
    mail to: "erik.young@rmit.edu.vn", subject: "Sign Up Confirmation"
  end
end
