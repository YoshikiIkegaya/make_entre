ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :name, :main_image, :main_image_cache, :publish_datetime, :place, :date, :content, :category, :organizer, :organizer_url
	form do |f|
		f.inputs "Event Details" do
			f.input :name
			f.input :place
			f.input :date
			f.input :content
			f.input :main_image
			f.input :organizer
			f.input :organizer_url
		    f.input :category, :as => :select, :collection => [['営業','営業'],['ラベル2','2']]
		end
	f.actions
	end
end
