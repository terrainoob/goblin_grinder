require 'rails_helper'

describe Views::Notes::New, type: :feature do
  # let(:output) { render Views::Notes::New.new }
  let!(:campaign) { FactoryBot.create(:campaign) }

  it 'allows the user to enter information about a note' do
    skip()
    visit new_note_path
    fill_in 'Title', with: 'My Title'
    fill_in 'Body', with: 'My Body'
    check 'Visible to players'
    click_button 'Save'
    expect(Note.all.first).not_to be_nil
  end
end
