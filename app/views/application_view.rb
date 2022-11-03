# frozen_string_literal: true

module Views
  class ApplicationView < Phlex::View
    include Rails.application.routes.url_helpers

    def layout = Layout

    def template(title: "Goblin Grinder", &block)
      render(layout.new(title:), &block)
    end
  end
end
