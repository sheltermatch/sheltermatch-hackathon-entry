class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.boolean :male, default: false, null: false
      t.boolean :female, default: false, null: false
      t.boolean :other, default: false, null: false

      t.timestamps null: false
    end
  end
end
