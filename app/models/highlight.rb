class Highlight < ActiveRecord::Base
  attr_accessible :title, :description, :user_id
  
  validates :title, :description, :user_id, :presence => true
  
  belongs_to :user
end
