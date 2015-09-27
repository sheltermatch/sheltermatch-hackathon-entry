class Shelter < ActiveRecord::Base
  has_one :meal, autosave: true
  has_one :gender, autosave: true
  has_many :users

  def self.search(search)
    where("name ILIKE ?", "%#{search}%") 
    where("address ILIKE ?", "%#{search}%") 
  end

  accepts_nested_attributes_for :meal, :gender
end
