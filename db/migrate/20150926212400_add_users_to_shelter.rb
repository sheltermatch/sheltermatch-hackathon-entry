class AddUsersToShelter < ActiveRecord::Migration
  def change
    add_reference :shelters, :user, index: true, foreign_key: true
  end
end
