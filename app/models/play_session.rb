# == Schema Information
#
# Table name: play_sessions
#
#  id          :bigint           not null, primary key
#  event_date  :datetime
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  campaign_id :bigint
#
# Indexes
#
#  index_play_sessions_on_campaign_id  (campaign_id)
#
class PlaySession < ApplicationRecord
  belongs_to :campaign
end
