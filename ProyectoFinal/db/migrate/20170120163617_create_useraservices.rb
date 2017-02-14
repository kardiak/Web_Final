class CreateUseraservices < ActiveRecord::Migration[5.0]
  def change
    create_table :useraservices do |t|
      t.integer :user_id
      t.integer :service_id
      t.string :username
      t.string :password
      t.string :hint

      t.timestamps
    end
  end
end
