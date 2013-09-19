class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true
  has_many :tags, :through => :labels
  has_many :labels 

end
