class Request < ApplicationRecord

	validates :name, :presence => {:message => '名前を入力してください'}
	validates :company_name, :presence => {:message => '会社名を入力してください'}
	validates :email, :presence => {:message => 'メールアドレスを入力してください'}
	validates :postal_code, :presence => {:message => '住所を入力してください'}
	validates :address, :presence => {:message => '住所を入力してください'}
	validates :telephone_number, :presence => {:message => '電話番号を入力してください'}
	validates :delivery_date, :presence => {:message => '納品日を入力してください'}
	validates :request_detail, :presence => {:message => 'お見積り内容を入力してください'}
	validates :delivery_status, inclusion: {in: [true, false]}

	def self.search(search)
		if search
			where(['name || company_name LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end
