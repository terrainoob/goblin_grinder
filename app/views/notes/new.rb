module Views
  class Notes::New < ApplicationView
    include Phlex::Rails::Helpers::FormWith

    def initialize(note:)
      @note = note
    end

    def template
      render Layout.new(title: "New Note") do
        form_with url: notes_path do |f|
          f.label 'Title', for: 'note_title'
          f.text_field :title, name: 'note[title]', id: 'note_title'
          f.label 'Body', for: 'note_body'
          f.text_area :body, name: 'note[body]', id: 'note_body'
          f.button 'Save'
          f.label 'Visible to players', for: 'note_player_visible'
          f.check_box :player_visible, name: 'note[player_visible]', id: 'note_player_visible'
        end
      end
    end
  end
end
