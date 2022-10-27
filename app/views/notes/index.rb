module Views
  class Notes::Index < ApplicationView
    def template
      h1 { "👋 Hello World!" }
    end
  end
end

