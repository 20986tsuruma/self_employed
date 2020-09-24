class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.text :request_detail
      t.datetime :delivery_date
      t.boolean :delivery_status, null: false, default: false

      t.timestamps
    end
  end
end
