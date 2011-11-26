class CommentsController < ApplicationController

  def edit
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new(params[:comment])
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to(note_path(params[:note_id]), :notice => 'Comment was successfully created.')
    else
      redirect_to(note_path(params[:note_id]), :notice => 'Error! Comment was\'nt created.')
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      redirect_to(note_path(params[:note_id]), :notice => 'Comment was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to(note_path(params[:note_id]))
  end
end
