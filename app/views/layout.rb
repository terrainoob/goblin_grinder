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
          stylesheet_link_tag "application", "data-turbo-track": "reload"
          javascript_include_tag "application", "data-turbo-track": "reload", defer: true 
        end

        body do
          button(
            type: "button",
            class: "btn btn-lg btn-danger",
            data_bs_toggle: "popover",
            title: "Popover title",
            data_bs_content: "Amazing content, right ?"
          ) do
            "Click to toggle popover"
          end
          main(&)
        end
      end
    end
  end
end

