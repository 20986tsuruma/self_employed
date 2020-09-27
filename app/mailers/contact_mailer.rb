class ContactMailer < ApplicationMailer

	def send_confirm_to_contact(contact)
		@contact = contact
	 	mail to: contact.email, subject: 'お問い合わせありがとうございます'
	end

	def received_email(contact)
		@contact = contact
		mail to: 'pfselfemployed@gmail.com', subject: 'お問い合わせ通知'
	end

	def auto_email
		@not_compatible_contacts = Contact.where(reply_status: false)
        @not_compatible_requests = Request.where(delivery_status: false)
		mail to: 'pfselfemployed@gmail.com', subject: 'お問い合わせ通知'
	end
end
