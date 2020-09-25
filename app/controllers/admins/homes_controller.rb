class Admins::HomesController < ApplicationController

	def top
        @not_compatible_contacts = Contact.where(reply_status: false).page(params[:page])
        @not_compatible_requests = Request.where(delivery_status: false).page(params[:page])
    end

end
