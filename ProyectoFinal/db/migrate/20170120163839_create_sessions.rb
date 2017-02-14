class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :sid
      t.string :email
      t.string :rols
      t.datetime :created_at
      t.datetime :closed_at
      t.integer :duration
      t.text :data

      t.timestamps
    end
  end
end
