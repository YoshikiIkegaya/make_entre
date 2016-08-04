class ParticipateMailer < ApplicationMailer

	def participate_email(user, event)
		@title = event.name
		mail to: user.email, subject: "参加申請をしました。"
	end
end
