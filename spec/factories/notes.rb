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
    campaign { nil }
    title { "MyString" }
    body { "MyText" }
    player_visible { false }
  end
end
