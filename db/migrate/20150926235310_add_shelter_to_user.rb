class AddShelterToUser < ActiveRecord::Migration
  def change
    add_reference :users, :shelter, index: true, foreign_key: true
  end
end
