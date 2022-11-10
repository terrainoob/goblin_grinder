module Views
  class Notes::Index < ApplicationView
    def initialize(notes:)
      @notes = notes
    end

    def template
      super(title: "Notes") do
        @notes.each do |note|
          h2 { note.title }
          p { note.body }
        end
      end
    end
  end
end

