class Admins::RequestsController < ApplicationController

	def index
		case params[:request_sort]
		when "0"
			@requests = Request.where(delivery_status: false).page(params[:page])
		else
			@requests = Request.page(params[:page])
		end
	end

	def show
		@request = Request.find(params[:id])
	end

	def update
		@request = Request.find(params[:id])
		if @request.update(request_params)
			redirect_to admins_request_path(@request.id)
		else
			render :show
		end
	end

	private
	def request_params
		params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail, :delivery_status)
	end

end
