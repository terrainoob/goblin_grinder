# == Schema Information
#
# Table name: campaigns
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#
class Campaign < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :play_sessions
end
