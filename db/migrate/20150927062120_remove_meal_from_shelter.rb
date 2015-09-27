class RemoveMealFromShelter < ActiveRecord::Migration
  def change
    remove_reference :shelters, :meal, index: true, foreign_key: true
  end
end
