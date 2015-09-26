class AddGendersToShelter < ActiveRecord::Migration
  def change
    add_reference :shelters, :gender, index: true, foreign_key: true
  end
end
