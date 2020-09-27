namespace :check_date do
	desc "check_state"

	task check_state: :environment do
		delivery_date_range = (Time.zone.now + 1)..(Time.zone.now + 2.days)
		requests = Request.where(delivery_date: delivery_date_range, delivery_status: false)
		RequestMailer.auto_email(requests).deliver if requests
	end
end
