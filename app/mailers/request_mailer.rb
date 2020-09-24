class RequestMailer < ApplicationMailer

	def send_confirm_to_request(request)
		@request = request
	 	mail to: request.email, subject: 'お見積り依頼ありがとうございます'
	end
end
