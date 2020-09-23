class Contact < ApplicationRecord
	include ActiveModel::Model

	attr_accessor :name, :company_name, :email, :telephone_number, :contact_detail

	validates :name, :presence => {:message => '名前を入力してください'}
	validates :email, :presence => {:message => 'メールアドレスを入力してください'}
	validates :telephone_number, :presence => {:message => '電話番号を入力してください'}
end
