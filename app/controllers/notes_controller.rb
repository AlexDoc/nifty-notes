class NotesController < ApplicationController
  def index
  end

  def new
    @note = Note.new
  end
end
