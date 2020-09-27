class Admins::RequestsController < ApplicationController
	before_action :authenticate_admin!

	def index
		case params[:request_sort]
		when "0"
			@requests = Request.where(delivery_status: false).page(params[:page]).reverse_order
		else
			@requests = Request.all.page(params[:page]).search(params[:search]).reverse_order
		end
	end

	def show
		@request = Request.find(params[:id])
	end

	def update
		@request = Request.find(params[:id])
		if @request.update(request_params)
			redirect_to request.referer, notice: "納品ステータスを更新しました"
		else
			render :show
		end
	end

	private
	def request_params
		params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail, :delivery_status)
	end

end
