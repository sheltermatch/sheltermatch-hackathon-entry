class Shelter < ActiveRecord::Base
  has_one :meal
  has_one :gender
  has_one :address
end
