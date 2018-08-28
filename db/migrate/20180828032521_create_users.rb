class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image_name
      t.string :email
      t.integer :gift_id

      t.timestamps
    end
  end
end
