class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :employe_id
      t.string :emp_name
      t.string :email_id
      t.integer :phone_no
      t.text :address
      t.integer :pan_no
      t.integer :passport_no
      t.date :passport_expry_date
      t.date :date_of_joining
      t.references :user, index: true

      t.timestamps
    end
  end
end
