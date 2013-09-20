class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true
  has_many :posts_tags
  has_many :tags, :through => :posts_tags
  after_save :tags

  def self.tag_list
  
  end

  def tags=(tags)
    tag_array = tags.split(',')
    blank_array = []
    tag_array.each do |tag|
      self.tags << Tag.create(tagwords: tag)
      # self.tags.new(tagwords: tag)
      # self.save!
    end

  end
end
