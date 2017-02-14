class CreateAservices < ActiveRecord::Migration[5.0]
  def change
    create_table :aservices do |t|
      t.string :name
      t.string :ip
      t.string :protocol

      t.timestamps
    end
  end
end
