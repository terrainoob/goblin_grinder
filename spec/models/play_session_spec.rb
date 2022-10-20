require 'rails_helper'

RSpec.describe PlaySession, type: :model do
  it { should belong_to :campaign }
end
