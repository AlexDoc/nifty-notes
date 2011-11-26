class Note < ActiveRecord::Base
  validates_presence_of :title, :text
  
  has_many :posts, :dependent => :destroy 
end
