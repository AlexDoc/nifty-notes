class Note < ActiveRecord::Base
  validates_presence_of :title, :text

  self.per_page = 6
end
