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
FactoryBot.define do
  factory :campaign do
    name { "MyString" }
    owner_id { 1 }
  end
end
