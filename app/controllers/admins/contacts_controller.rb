class Admins::ContactsController < ApplicationController
	before_action :authenticate_admin!

	def index
		case params[:contact_sort]
		when "0"
			@contacts = Contact.where(reply_status: false).page(params[:page]).reverse_order
		else
			@contacts = Contact.all.page(params[:page]).search(params[:search]).reverse_order
		end
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update(contact_params)
			redirect_to request.referer, notice: "返信ステータスを更新しました"
		else
			render :show
		end
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :company_name, :email, :telephone_number, :contact_detail, :reply_status)
	end
end
