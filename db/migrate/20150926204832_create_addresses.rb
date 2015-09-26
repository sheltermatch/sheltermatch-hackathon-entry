class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street, null: false, required: true
      t.string :city, null: false, required: true
      t.string :state
      t.string :state_short, null: false, required: true
      t.integer :zip, null: false, required: true

      t.timestamps null: false
    end
  end
end
