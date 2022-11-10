class PlaySessionsController < ApplicationController
  def index

  end

  def show    
    render ::Views::PlaySessions::Show.new(params[:id])
  end

  def new
    
  end

  def update
    
  end

  def destroy

  end
end