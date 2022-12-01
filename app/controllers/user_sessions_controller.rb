class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new]

  def new
    render ::Views::UserSessions::New.new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(dashboard_path, notice: "You have logged in successfully")
    else
      flash.now[:alert] = "Log in failed"
      render :new
    end
  end
end
