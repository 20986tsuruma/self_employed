class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :telephone_number
      t.text :contact_detail
      t.boolean :reply_status, null: false, default: false

      t.timestamps
    end
  end
end
