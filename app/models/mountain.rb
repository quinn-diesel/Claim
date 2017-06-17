class Mountain < ApplicationRecord
  has_many :runs
  has_and_belongs_to_many :users
end
