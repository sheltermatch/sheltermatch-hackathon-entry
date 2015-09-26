class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name, required: true, null: false
      t.string :description, required: true
      t.string :beds, default: 0, null: false
      t.boolean :fee, default: false , null: false
      t.integer :age_min, default: 0, null: false
      t.integer :age_max, default: 0, null: false
      t.string :phone, required: true, null: false

      t.timestamps null: false
    end
  end
end
