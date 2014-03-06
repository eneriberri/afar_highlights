class Highlight < ActiveRecord::Base
  attr_accessible :title, :description
  
  validates :title, :description, :presence => true
  
  belongs_to :user
end
