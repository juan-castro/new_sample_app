class Micropost < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user

  default_scope :order => 'micropost.created_at DESC'
end
