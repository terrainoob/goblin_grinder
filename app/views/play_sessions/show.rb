module Views
  class PlaySessions::Show < ApplicationView
    def initialize(show_id)
      @show_id = show_id
    end

    def template
      h1 { "👋 Hello World!  Looking at show #{@show_id}" }
    end
  end
end
