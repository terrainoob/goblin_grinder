require 'rails_helper'

describe Views::Notes::Index do
  let!(:note1) { FactoryBot.create(:note) }
  let!(:note2) { FactoryBot.create(:note) }
  let(:output) { render Views::Notes::Index.new(notes: Note.all) }

  it 'displays all note titles' do
    Note.all.each do |note|
      expect(output).to have_text(note.title)
    end
  end

  it 'displays all note bodies' do
    Note.all.each do |note|
      expect(output).to have_text(note.body)
    end
  end
end
