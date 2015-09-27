class RemoveAddressFromShelter < ActiveRecord::Migration
  def change
    remove_reference :shelters, :address, index: true, foreign_key: true
  end
end
