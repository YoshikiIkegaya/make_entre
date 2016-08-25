class ApplicationMailer < ActionMailer::Base
  default from: ENV['ENV_MAIL_USER']
  layout 'mailer'
end
