module Views
  class Notes::Index < ApplicationView
    def initialize(notes:)
      @notes = notes
    end

    def template
      super(title: "Notes") do
        h1 { "👋 Hello World!" }
        @notes.each do |note|
          p { note.name }
        end
      end
    end
  end
end

