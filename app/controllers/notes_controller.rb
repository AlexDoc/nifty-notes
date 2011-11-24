class NotesController < ApplicationController
  def index
    @notes = Note.paginate(:page => params[:page], :per_page => 6)
  end

  def new
    @note = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    if @note.update_attributes(params[:comment])
      redirect_to(note_path(params[:note_id]), :notice => 'Note was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def create
    @note = Note.create(params[:note])
    if @note.persisted?
      redirect_to notes_path
    else
      render :new
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end
	 
end
