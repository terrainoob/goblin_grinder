require 'rails_helper'

describe Views::PlaySessions::Show do
  let(:play_session) { FactoryBot.create(:play_session) }
  let(:output) { render Views::PlaySessions::Show.new(play_session.id) }
  
  it 'does something' do
    expect(output).not_to be_nil
  end
end