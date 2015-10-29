class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :logo
      t.integer :star
      t.integer :state
      t.string :remarks
      t.integer :amounts_to_send
      t.integer :time_to_send
      t.string :shop_hours
      t.string :license

      t.timestamps null: false
    end
  end
end
