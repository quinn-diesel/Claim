# == Schema Information
#
# Table name: runs
#
#  id               :integer          not null, primary key
#  name             :string
#  length           :string
#  difficulty       :string
#  number_of_deaths :string
#  claim            :boolean
#  image            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  mountain_id      :integer
#

class Run < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :mountain
end
