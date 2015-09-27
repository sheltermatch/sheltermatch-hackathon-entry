class Shelter < ActiveRecord::Base
  has_one :meal
  has_one :gender
  has_one :address
  has_many :users

  accepts_nested_attributes_for :address, :meal, :gender
end
