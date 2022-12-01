module Views
  class UserSessions::New < ApplicationView
    include Phlex::Rails::Helpers::FormWith

    def initialize
    end

    def template
      render Layout.new(title: "Login") do
        form_with url: user_sessions_path do |f|
          f.label 'Email', for: 'user_session_email'
          f.text_field :email, name: 'user_session[email]', id: 'user_session_email'
          f.label 'Password', for: 'user_session_password'
          f.text_field :password, name: 'user_session[password]', id: 'user_session_password'
          f.button 'Login'
        end
      end
    end
  end
end