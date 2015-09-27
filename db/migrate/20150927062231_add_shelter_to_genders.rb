class AddShelterToGenders < ActiveRecord::Migration
  def change
    add_reference :genders, :shelter, index: true, foreign_key: true
  end
end
