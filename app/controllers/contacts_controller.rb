class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
		    ContactMailer.send_confirm_to_contact(@contact).deliver
		    ContactMailer.received_email(@contact).deliver
		    redirect_to contacts_thanks_path
	    else
		    render 'new'
	    end
    end

	def thanks
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail)
	end
end
