# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  age             :integer
#  ski_type        :string
#  photo           :text
#  user_id         :string
#  nationality     :string
#  home_mountain   :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_and_belongs_to_many :runs
  has_and_belongs_to_many :mountains
end
