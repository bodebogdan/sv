class MailController<ApplicationController
	def test
		UserMailer.welcome_email("ella92mp@yahoo.com").deliver_now
	end
end