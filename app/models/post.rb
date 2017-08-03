class Post < ActiveRecord::Base
  validates_presence_of :title, :description
  #paginates_per 25
end
