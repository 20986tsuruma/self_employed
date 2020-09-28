class ContactsController < ApplicationController
	before_action :contact_params, only: [:confirm, :back, :create]

	def new
		@contact = Contact.new
	end

	def confirm
		return if @contact.valid?
		render :new
	end

	def back
		render :new
	end

	def create
		if @contact.save
		    ContactMailer.send_confirm_to_contact(@contact).deliver
		    ContactMailer.received_email(@contact).deliver
		    redirect_to contacts_thanks_path
	    else
		    render :new
	    end
    end

	def thanks
	end

	private
	def contact_params
		@contact = Contact.new(params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail))
	end
end
