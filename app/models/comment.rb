class Comment < ActiveRecord::Base

  validates :comment, :presence => true
  validates :note_id, :presence => true

  belongs_to :note
end
