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
FactoryBot.define do
  factory :play_session do
    campaign { FactoryBot.create(:campaign) }
    event_date { "2022-10-20 16:12:37" }
    name { "MyString" }
  end
end
