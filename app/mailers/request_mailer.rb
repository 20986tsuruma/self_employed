class RequestMailer < ApplicationMailer

	def send_confirm_to_request(request)
		@request = request
	 	mail to: request.email, subject: 'お見積り依頼ありがとうございます'
	end

	def received_email(request)
		@request = request
		mail to: 'pfselfemployed@gmail.com', subject: 'お見積り依頼通知'
	end

	def auto_email(requests)
		@not_compatible_requests = requests
		mail to: 'pfselfemployed@gmail.com', subject: 'お見積り依頼通知'
	end
end
