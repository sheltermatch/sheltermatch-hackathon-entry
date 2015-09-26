class AddAddressesToShelter < ActiveRecord::Migration
  def change
    add_reference :shelters, :address, index: true, foreign_key: true
  end
end
