module EventsHelper
	def reserved?(users)
		users.each do |reserved_user|
        	if reserved_user.id == current_user.id
        		return true
        	end
        end
        return false
	end
end
