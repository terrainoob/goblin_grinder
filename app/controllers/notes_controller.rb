class NotesController < ApplicationController
  # layout false

  def index
    render ::Views::Notes::Index.new(
      notes: Note.all
    )
  end

  def show
    
  end

  def new
    
  end

  def update
    
  end

  def destroy

  end
end