class ApplicationMailer < ActionMailer::Base
  default from: 'erik.young@rmit.edu.vn'

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
  layout 'mailer'
end
