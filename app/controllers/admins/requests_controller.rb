class Admins::RequestsController < ApplicationController

	def index
		@requests = Request.page(params[:page])
	end

	def show
		@request = Request.find(params[:id])
	end

	private
	def contact_params
		params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail)
	end

end
