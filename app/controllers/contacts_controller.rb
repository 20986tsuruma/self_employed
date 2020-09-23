class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def confirm
		@contact = Contact.new(params[:contact].permit(:name, :company_name, :email, :telephone_number, :contact_detail))
		if @contact.valid?
			render :confirm
		else
			render :new
		end
	end

	def thanks
		@contact = Contact.new(params[:contact].permit(:name, :company_name, :email, :telephone_number, :contact_detail))
		ContactMailer.received_email(@contact).deliver
		render :thanks
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail)
	end
end
