class RemoveUserFromShelter < ActiveRecord::Migration
  def change
    remove_reference :shelters, :user, index: true, foreign_key: true
  end
end
