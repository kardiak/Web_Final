class CreateUserrols < ActiveRecord::Migration[5.0]
  def change
    create_table :userrols do |t|
      t.integer :rol_id
      t.integer :user_id
      t.string :started_by
      t.string :finished_by
      t.datetime :started_at
      t.datetime :finished_at
      t.text :finished_reason
      t.text :comment

      t.timestamps
    end
  end
end
