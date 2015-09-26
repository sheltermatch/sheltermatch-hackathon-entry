class AddMealsToShelter < ActiveRecord::Migration
  def change
    add_reference :shelters, :meal, index: true, foreign_key: true
  end
end
