class Highlight < ActiveRecord::Base
  extend FriendlyId
  
  attr_accessible :title, :description, :user_id
  
  validates :title, :description, :user_id, :presence => true
  
  belongs_to :user
   
  friendly_id :title, use: :slugged
end
