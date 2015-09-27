class AddShelterToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :shelter, index: true, foreign_key: true
  end
end
