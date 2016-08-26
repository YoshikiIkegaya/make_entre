class ApplicationMailer < ActionMailer::Base
	if Rails.env == 'production'
		default from: ENV['ENV_MAIL_USER']
	else
		default from: "ikegaya.dev@gmail.com"
	end
  layout 'mailer'
end
