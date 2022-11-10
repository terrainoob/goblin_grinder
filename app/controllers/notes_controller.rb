class NotesController < ApplicationController
  # layout false

  def index
    render ::Views::Notes::Index.new(
      notes: Note.all
    )
  end

  def create
    note = Note.create(note_params)
    if note.save
    else
    end
  end

  def show
    
  end

  def new
    render ::Views::Notes::New.new(
      note: Note.new
    )
  end

  def update
    
  end

  def destroy

  end

private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end