class Shelter < ActiveRecord::Base
  has_many :meal
  has_many :gender
  has_many :address
  has_many :users

  accepts_nested_attributes_for :address, :meal, :gender
end
