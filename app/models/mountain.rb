# == Schema Information
#
# Table name: mountains
#
#  id             :integer          not null, primary key
#  name           :string
#  size           :integer
#  number_of_runs :integer
#  map            :string
#  highest_point  :integer
#  number_of_bars :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Mountain < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :runs
end
