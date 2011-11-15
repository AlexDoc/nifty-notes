class NotesController < ApplicationController
  def index
  end

  def new
    @note = Note.build
  end
end
