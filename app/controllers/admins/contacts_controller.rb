class Admins::ContactsController < ApplicationController

	def index
		@contacts = Contact.page(params[:page])
	end

	def show
		@contact = Contact.find(params[:id])
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail)
	end
end
