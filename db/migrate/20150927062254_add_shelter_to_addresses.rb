class AddShelterToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :shelter, index: true, foreign_key: true
  end
end
