# == Schema Information
#
# Table name: notes
#
#  id             :bigint           not null, primary key
#  body           :text             not null
#  player_visible :boolean          default(FALSE)
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  campaign_id    :bigint           not null
#
# Indexes
#
#  index_notes_on_campaign_id  (campaign_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#
FactoryBot.define do
  factory :note do
    campaign { FactoryBot.create(:campaign) }
    sequence :title do |n| 
      "Note title #{n}"
    end
    sequence :body do |n| 
      "Note body #{n}"
    end
    player_visible { false }
  end
end
