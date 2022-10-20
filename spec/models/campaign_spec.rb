require 'rails_helper'

RSpec.describe Campaign, type: :model do
  it { should belong_to :owner }
  it { should have_many :play_sessions }
end
