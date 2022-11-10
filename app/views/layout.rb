module Views
  class Layout < ApplicationView
    include Phlex::Rails::Layout

    def initialize(title:)
      @title = title
    end

    def template(&)
      doctype

      html do
        head do
          meta charset: "utf-8"
          csp_meta_tag
          csrf_meta_tags
          meta name: "viewport", content: "width=device-width,initial-scale=1"
          title { "#{@title} - Goblin Grinder" }
          stylesheet_link_tag "application"
        end

        body do
          main(&)
        end
      end
    end
  end
end

