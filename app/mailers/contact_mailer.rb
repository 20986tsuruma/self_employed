class ContactMailer < ApplicationMailer

	def send_confirm_to_contact(contact)
		@contact = contact
	 	mail to: contact.email, subject: '【サイト名】 お問い合わせありがとうございます'
	end
end
