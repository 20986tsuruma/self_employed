class Admins::HomesController < ApplicationController

	def top
        @not_compatible_contacts = Contact.where(reply_status: false)
        @not_compatible_requests = Request.where(delivery_status: false)
    end

end
