class RequestsController < ApplicationController

	def new
		@request = Request.new
	end

	def create
		@request = Request.new(request_params)
		if @request.save
			RequestMailer.send_confirm_to_request(@request).deliver
			redirect_to requests_thanks_path
		else
			render :new
		end
	end

	private
	def request_params
		params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail, :delivery_date, :correspond)
	end

end
