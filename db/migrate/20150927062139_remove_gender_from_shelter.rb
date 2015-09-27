class RemoveGenderFromShelter < ActiveRecord::Migration
  def change
    remove_reference :shelters, :gender, index: true, foreign_key: true
  end
end
