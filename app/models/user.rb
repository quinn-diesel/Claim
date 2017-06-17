class User < ApplicationRecord
  has_and_belongs_to_many :runs
  has_and_belongs_to_many :mountains
end
