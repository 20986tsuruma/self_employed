class ContactMailer < ApplicationMailer

	 def send_when_admin_reply(contact)
	 	@contact = contact
	 	@answer = contact.reply_text
	 	mail to: contact.email, subject: '【XXX会社】 お問い合わせありがとうございます'
	 end
end
