class Admins::ContactsController < ApplicationController
	before_action :authenticate_admin!

	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update(contact_params)
			redirect_to admins_contact_path(@contact.id)
		else
			render :show
		end
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail, :reply_status)
	end
end
