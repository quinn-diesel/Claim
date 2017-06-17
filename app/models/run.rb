class Run < ApplicationRecord
  belongs_to :mountain
  has_and_belongs_to_many :users
end
