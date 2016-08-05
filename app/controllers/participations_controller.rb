class ParticipationsController < ApplicationController

	def participate
		event = Event.find(params[:event_id])
		participation = current_user.participations.build(event_id: event.id)
		participation.save
		redirect_to event
	end

	def cancel
		event = Event.find(params[:event_id])
		#なぜかcurrent_user.participations.build(event_id: event.id)がうまくいかない...原因究明したい
		participation = Participation.find_by(event_id: event.id, user_id: current_user.id)
		participation.destroy
		redirect_to event
	end
end
