class RequestsController < ApplicationController

	def new
		@request = Request.new
	end

	def create
		@request = Request.new(contact_params)
		if @request.save
			redirect_to root_path, notice: "お見積り依頼を送信しました"
		else
			render :new
		end
	end

	private
	def request_params
		params.require(:request).permit(:name, :company_name, :email, :postal_code, :address, :telephone_number, :request_detail)
	end

end
