class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.string :phone_type
      t.integer :user_id
      t.timestamps
    end
  end
end
