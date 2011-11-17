class NotesController < ApplicationController
  def index
    @notes = Note.page(params[:page])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(params[:note])
    if @note.persisted?
      redirect_to notes_path
    else
      render :new
    end
  end

end
