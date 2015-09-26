class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.boolean :breakfast, default: false, null: false
      t.boolean :lunch, default: false, null: false
      t.boolean :dinner, default: false, null: false

      t.timestamps null: false
    end
  end
end
