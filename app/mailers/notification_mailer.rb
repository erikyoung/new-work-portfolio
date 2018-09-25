class NotificationMailer < ApplicationMailer
	default from: 'info@erikyoungwebdesigner.ml'

	def comment_added(work)
		@work = work
		mail(to: "youngerik26@gmail.com", subject: "A comment has been added to your place")
	end
end
