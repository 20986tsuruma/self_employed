class RequestsController < ApplicationController
	before_action :request_params, only: [:confirm, :back, :create]

	def new
		@request = Request.new
	end

	def confirm
		return if @request.valid?
		render :new
	end

	def back
		render :new
	end

	def create
		if @request.save
			RequestMailer.send_confirm_to_request(@request).deliver
			RequestMailer.received_email(@request).deliver
			redirect_to requests_thanks_path
		else
			render :new
		end
	end

	def thanks
	end

	private
	def request_params
		@request = Request.new(params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail, :delivery_date, :correspond))
	end

end
