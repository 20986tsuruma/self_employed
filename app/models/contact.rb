class Contact < ApplicationRecord

	validates :name, :presence => {:message => '名前を入力してください'}
	validates :email, :presence => {:message => 'メールアドレスを入力してください'}
	validates :telephone_number, :presence => {:message => '電話番号を入力してください'}
	validates :contact_detail, :presence => {:message => 'お問い合わせ内容を入力してください'}
	validates :reply_status, inclusion: {in: [true, false]}

	def self.search(search)
		if search
			where(['name LIKE ? || company_name LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end
